"""Merge the old RLI observing-log database into a copy of Durham_Observation_Database.db.

Both originals are opened read-only. The output is a new file with the Durham schema.

- Pages already in the Durham DB are kept as they are (they carry the label corrections).
- RLI rows from every other page are converted to the Durham format:
    telescope from the URL directory (east_14 -> east-14), dates as YYYY-MM-DD,
    '-' RA/Dec -> NULL, FWHM 0.0 -> NULL (RLI stored '-' FWHM as 0.0), A -> NULL (RLI never scraped it).
- Rows notebook 01 would not store (non-digit img_num) and second copies of a
  (url_source, img_num) key go to rli_import_rejects instead of being lost.
- Imported pages are listed in imported_logs and processed_logs, so notebook 01
  does not request them from the website again.

Usage: python3 -I merge_rli_logs.py RLI_DB DURHAM_DB OUTPUT_DB
"""
import sqlite3
import sys
from pathlib import Path, PurePosixPath
from urllib.parse import urlparse

rli_path, durham_path, out_path = map(Path, sys.argv[1:4])
if out_path.exists():
    sys.exit(f"{out_path} already exists; refusing to overwrite")

# copy the Durham DB (schema, rows, corrections, processed_logs) into the new file
src = sqlite3.connect(f"file:{durham_path}?mode=ro", uri=True)
out = sqlite3.connect(out_path)
src.backup(out)
src.close()

out.execute(f"ATTACH 'file:{rli_path}?mode=ro' AS rli")
out.executescript("""
CREATE TABLE imported_logs (
    url_source TEXT PRIMARY KEY,
    source TEXT NOT NULL,
    imported_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE rli_import_rejects (
    rli_id INTEGER PRIMARY KEY,
    reason TEXT NOT NULL,
    telescope TEXT, log_date TEXT, run_id TEXT, object_name TEXT, ra TEXT, dec TEXT,
    start_time_utc TEXT, filter TEXT, exposure_time REAL, fwhm REAL, url_source TEXT
);
""")


def telescope_from_url(url):
    return PurePosixPath(urlparse(url).path).parts[-3].replace("_", "-")


def optional_float(text):
    return None if text in ("-", "", None) else float(text)


durham_urls = {u for (u,) in out.execute("SELECT DISTINCT url_source FROM main.observations")}
rows = out.execute("""
    SELECT id, telescope, log_date, run_id, object_name, ra, dec, start_time_utc,
           filter, exposure_time, fwhm, url_source
    FROM rli.observations ORDER BY id
""").fetchall()

seen = set()
new_rows, rejects, pages = [], [], set()
for r in rows:
    rid, tel, log_date, run_id, obj, ra, dec, start, filt, exp, fwhm, url = r
    if url in durham_urls:
        continue
    if not run_id.isdigit():
        rejects.append((rid, "non-digit img_num (notebook 01 skips these)") + r[1:])
        continue
    if (url, run_id) in seen:
        rejects.append((rid, "duplicate (url_source, img_num); first RLI row kept") + r[1:])
        continue
    seen.add((url, run_id))
    pages.add(url)
    new_rows.append((
        run_id, obj, optional_float(ra), optional_float(dec), None, start, filt, exp,
        None if fwhm == 0 else fwhm, telescope_from_url(url), log_date.replace("_", "-"), url,
    ))

with out:
    out.executemany("""
        INSERT INTO main.observations (img_num, object, ra, dec, A, start_time,
                                       filter, exp_time, fwhm, telescope, obs_date, url_source)
        VALUES (?,?,?,?,?,?,?,?,?,?,?,?)
    """, new_rows)
    out.executemany("INSERT INTO rli_import_rejects VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)", rejects)
    out.executemany("INSERT INTO imported_logs (url_source, source) VALUES (?, 'RLI telescope_logs.db')",
                    [(u,) for u in sorted(pages)])
    out.executemany("INSERT OR IGNORE INTO processed_logs (url_source) VALUES (?)", [(u,) for u in sorted(pages)])
    out.executescript("""
        CREATE INDEX IF NOT EXISTS idx_obs_object ON observations(object);
        CREATE INDEX IF NOT EXISTS idx_obs_date ON observations(obs_date);
        CREATE INDEX IF NOT EXISTS idx_obs_telescope ON observations(telescope);
    """)

out.execute("DETACH rli")
out.execute("VACUUM")
out.close()
print(f"kept Durham pages: {len(durham_urls)}")
print(f"imported RLI pages: {len(pages)}, rows: {len(new_rows)}, rejects: {len(rejects)}")
