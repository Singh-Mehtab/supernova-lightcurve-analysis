# stackX3 guide

Last updated: 2026-11-23

This explains what `stackX3.py` does, how to call it, what it reads and writes, and how to tell whether a run worked. It is meant for anyone, person or AI, who needs to run it, build a batch system around it, or change it.

Related files:
- [STACKX3_OPEN_ISSUES.md](STACKX3_OPEN_ISSUES.md): fixes already made and problems still open. Read it before changing anything.
- [STACKX2_ISSUE_HANDOFF.md](STACKX2_ISSUE_HANDOFF.md): the investigation that led to stackX3, including why stackX2's alignment failed.
- `Astrolab_Code/lab batches/stackx3_laptop_tests/`: the laptop test scripts and baseline results (see its README).

## Status

| Item | State |
|---|---|
| Script | `Astrolab_Code/py_programs/stackX3.py` (1,052 lines, SHA-256 `e85b1dee…48561` on 2026-11-16) |
| Parent | `stackX2.py` in the same folder, **unchanged** (SHA-256 `5b3ed033…56a59`, same as `/mnt/64bin/stackX2.py` at the lab) |
| Tested | On the laptop only, against the 34 test groups copied from the lab on 2026-11-10, with a **stand-in for arefcat**. Astrometry, `/mnt/archive` and the shared flat paths have not been tested. |
| At the lab | Not yet copied or run. Needs a lab test plan first. |
| Notebook 03 | Still generates stackX2 commands. Not changed. |

## What it is

`stackX3.py` is a minimal-change copy of `stackX2.py`, the lab's script for stacking a group of exposures into one mosaic and then running astrometry on it. The command line and output names are kept compatible on purpose. It differs from stackX2 in these ways:

1. **Alignment.** Offsets between frames are measured on 3×3 median-filtered copies. stackX2 cross-correlated the raw frames, so fixed hot and dead pixels (identical on every frame) dominated the correlation and forced every offset to zero, smearing the stack. The filter removes single bad pixels but keeps stars. The filtered copies are used only to measure offsets; the stack is built from the unfiltered frames.
2. **Flats are chosen automatically** (rules below) and the choice is recorded. stackX2 silently stacked without a flat if the flat file was missing.
3. **Everything is written to the current folder.** stackX2 also wrote to `~/tmp`, so two jobs at once overwrote each other.
4. **Failures are reported properly.** Every abort exits with status 1 (stackX2 exited 0). The script also checks that astrometry actually produced a new `amosaic.fits`.
5. **Smaller fixes:**
   - negative offsets are printed correctly;
   - the pixel scale is read from the right header (stackX2's bug here crashed groups whose first frame lacked astrometry);
   - frames whose seeing can't be measured are left out instead of crashing the run;
   - a crash while drawing the diagnostic plots no longer stops astrometry;
   - `east_16`-style names are converted;
   - a wrong number of arguments prints the usage text;
   - the old current-directory mode no longer crashes.

## How to call it

Always run it from a **fresh, empty job folder**:

```
mkdir working/g123 && cd working/g123
python3 /path/to/stackX3.py <telescope> <yy_mm_dd> <first> <last> <seeing_limit> [flat] > stackX3.log 2>&1
echo $?    # 0 = success, 1 = failure
```

| Argument | Meaning |
|---|---|
| `telescope` | Archive folder name: `pt5m`, `east-14`, `east-16`, `west-14`, `draco2`, `far-east-16`, `far-east-20`. Underscores (`east_16`) are converted to hyphens. |
| `yy_mm_dd` | Night folder (the evening date), e.g. `26_11_04`. |
| `first`, `last` | First and last run numbers, inclusive. Leading zeros don't matter. |
| `seeing_limit` | Frames with seeing (FWHM) worse than this many arcsec are left out. Notebook 03 uses `5.0`. |
| `flat` *(optional)* | Leave out to choose automatically; `none` to stack without a flat on purpose; or a path to force a particular flat. |

There is also the old mode `python3 stackX3.py <seeing_limit>`, run in a folder of `d*.fits` files. It uses `./master_flat.fits` if present. It isn't intended for batches.

**Environment variables** (only needed for testing away from the lab):

| Variable | Default |
|---|---|
| `STACKX3_ARCHIVE_ROOT` | `/mnt/archive` |
| `STACKX3_FLAT_ROOT` | `/mnt/share/flatfields` (confirmed from the lab listing of 2026-11-17) |
| `STACKX3_AREFCAT` | `/mnt/64bin/auto_astrom/arefcat.py` |

arefcat is run with the same Python as stackX3 (`sys.executable`).

## What it does, step by step

1. **Find the frames** in `ARCHIVE_ROOT/<telescope>/20<yy>/<yy_mm_dd>/`:
   - **pt5m:** `adbr<7-digit number>.fits` (bias removed, with astrometry), otherwise `dbr<number>.fits`.
   - **Other telescopes:** `ad<4-digit number>.fits`, otherwise `d<number>.fits`.
   - If neither exists for a run number, it exits 1.

   Archive prefixes: `r` raw, `d` dark subtracted, `dbr` bias removed, `a…` has astrometry. The telescope pipeline never applies flats.
2. **Read FILTER and image size** from the first frame.
3. **Choose the flat:**
   - **Command-line path:** used as given. It must exist (exit 1 if not). A FILTER or size mismatch prints a warning, and a size mismatch later stops the run.
   - **`none`:** no flat; recorded as `none requested`.
   - **pt5m, automatic:** `<FILTER>flatnorm2x2.fits` (e.g. `Vflatnorm2x2.fits`) in the night's `calibs/` folder. If it isn't there, it searches earlier nights, newest first and across years, for the nearest one whose FILTER header and size match.
   - **Other telescopes, automatic:** the most recent entry in `SHARED_FLATS` for that telescope and filter taken **on or before** the observing night, and whose FILTER header and size match. Durham takes flats each Michaelmas (around October) and Epiphany (around January). So a January 2026 image uses the Epiphany 2026 flat (or Michaelmas 2025 if it was taken before that flat), never the October 2026 one.
   - **Soft age cap:** a flat more than 183 days (about 6 months) older than the data is still used, but the log prints a warning and the header gets `FLATOLD = T`.
   - **No suitable flat:** exit 1, with a message saying to pass a path or `none`.
4. **For every frame:** divide by the flat, subtract the median sky, and measure the offset from the first frame by cross-correlating 3×3 median-filtered copies. If both frames have astrometry, print the WCS-predicted offset and warn if the two differ by more than 3 px.
5. **Measure each frame's seeing** with DAOStarFinder (10σ) and a Gaussian fit. Frames are left out if they have no stars, their seeing can't be measured, or their seeing is above the limit. Each one is logged with a reason.
6. **Stack:** shift the unfiltered frames by whole pixels and take the median of the frames that overlap. If no frames remain, exit 1.
7. **Write `mosaic.fits`** with the first frame's header, CRPIX shifted to keep its astrometry, plus the keywords listed below.
8. **Draw two diagnostic PNGs.** If plotting fails, print a warning and continue.
9. **Run arefcat on `mosaic.fits`**, which writes `amosaic.fits` if it works.
10. **Check for a new `amosaic.fits`** (newer than `mosaic.fits`). Exit 0 if it exists, otherwise exit 1.

## Files

**Reads only:**
- the archive night folder;
- the pt5m `calibs/` folders of that night and earlier ones;
- the flats under `FLAT_ROOT`;
- arefcat and its helpers, which read the Refcat2 catalogue at `/mnt/cats/RC2`.

**Writes only into the job folder:**

```
job_folder/
├── mosaic.fits              stacked image, written once stacking succeeds
├── img_mosaic.png           mosaic preview + seeing histogram        (if plotting worked)
├── img_mosaic_inprops.png   offsets and sky level for each frame     (if plotting worked)
├── mosaic_done              empty marker: stacking and plots finished
│   written by arefcat:
├── amosaic.fits             mosaic with astrometry: the product
├── mosaic_astrom.dat        astrometric fit details
├── astrom.lis               astrom output
└── refcat_stars, asc_sextr.cat, usnoa_ref.cen, usnoa_ref.cat, asc_*.dat ...   arefcat working files
```

arefcat tidies some working files away on success and leaves more on failure. Its only file outside the job folder is `/tmp/junk_<process id>`, which is unique to each run. arefcat reads `automag_driver` from the job folder only when it can't find a pixel scale for the telescope. An audit (2026-11-10) found no other shared files anywhere in the arefcat chain.

**Header keywords added to `mosaic.fits`** (and carried into `amosaic.fits`):

| Keyword | Meaning |
|---|---|
| `STACKPRG` | `stackX3.py` |
| `ALIGNMTH` | how offsets were measured |
| `FLATFILE` | full path of the flat used, or `none` |
| `FLATMODE` | `same night`, `earlier night` (pt5m), `most recent shared flat` (others), `given on command line`, `none requested`, or the current-directory variants |
| `FLATAGE` | days between flat and data; `-1` if unknown (e.g. a flat given by hand) |
| `FLATOLD` | `T` if `FLATAGE` is more than 183 |
| `NFRAMES` | frames used in the stack |
| `NSKIPPED` | frames left out; one `HISTORY` line per frame gives the reason |
| `NWCSWARN` | frames whose measured offset differed from the WCS by more than 3 px |

arefcat adds `N_ASTARS` (stars in the astrometric fit) to `amosaic.fits`.

## How to tell what happened

| Outcome | Exit | Files |
|---|---|---|
| Success | 0 | new `amosaic.fits` |
| Stacked but astrometry failed | 1 | `mosaic.fits`, no new `amosaic.fits`. Keep `mosaic.fits`: the astrometry can be rerun on it without restacking. |
| Stopped before stacking: missing frame, no suitable flat, no good frames, bad arguments, or flat size mismatch | 1 | no `mosaic.fits` |
| Unexpected Python error | 1 | traceback at the end of the log |

Log lines worth searching for:
- `Flatfield found: <path>`: same format as stackX2, so existing checks still work. Absent when no flat was used.
- `Flat chosen by: <mode>` and `Using flat ... days earlier` / `... days before this night`
- `WARNING: the flat is N days older than the data`
- `WARNING: measured offset differs from WCS by N pixels`
- `... frame left out`
- `WARNING: diagnostic plots failed`
- `Error. ...`: the reason for the exit 1
- `astrometry done: amosaic.fits written`

## Rules for building around it

- **One fresh folder per job.** Two jobs in one folder overwrite each other's `mosaic.fits` and arefcat files. Rerunning in an old folder can pick up stale arefcat files. Notebook 03's `working/g<id>/` pattern, which refuses to reuse an existing folder, is right.
- **Parallel jobs are safe** if each has its own folder: separate terminals, or a launcher that runs a few at once. The lab machine has 4 CPUs and 8 GB of RAM. The zeropoint step afterwards must stay serial, because it writes shared `zpts.log` and `results.csv`.
- **Success test:** exit status 0, *and* `amosaic.fits` exists and contains `N_ASTARS`. Don't depend on the `Flatfield found` line for `none` runs; check `FLATMODE` instead.
- **Copy out `amosaic.fits`** as the product. Keep the job folder, or at least `mosaic.fits` and the log, for failures.
- **Review before photometry:** mosaics with `FLATOLD = T`, `NWCSWARN > 0`, or `NFRAMES` much smaller than the group size.
- **No flat dictionary is needed in notebook 03 any more.** Call stackX3 without a sixth argument. Keep the option to pass a path or `none` for special cases (e.g. west-14 B 2026, whose labelled B flat is really a V flat).
- **Nothing to watch in `~/tmp`.** Anything that waited for `~/tmp/mosaic_done` or read `~/tmp/amosaic.fits` must look in the job folder.

## Updating the flat list

`SHARED_FLATS` in `stackX3.py` lists every usable master flat on the shared drive as `(telescope, FILTER, date taken, path relative to FLAT_ROOT)`. Each FILTER and date comes from the file's own header, as recorded in the lab inventory of 2026-10-26, with `flats_Mich2026` re-read on 2026-11-23. That gives 210 entries, with the remaining mislabelled or ambiguous files left out because they're mislabelled or ambiguous (the reasons are in the comments above the list and in issue 10 of the open-issues file).

When new flats are added at the lab (for example a new Michaelmas set):
1. At the lab, run `python3 dump_flat_headers.py <flat folder>` (in `lab batches/stackx3_laptop_tests/`; read-only, standard Python only) and bring back the CSV it writes. For a full re-inventory, use the `lab_info_collector` instead.
2. Run `python3 "Astrolab_Code/lab batches/stackx3_laptop_tests/build_shared_flat_table.py" <capture folder>`.
3. Check any new files whose header disagrees with their name, and add them to the exclusion list in that script if needed.
4. Replace the `SHARED_FLATS` list in `stackX3.py` with the output, then rerun the laptop tests.

## Testing

See `Astrolab_Code/lab batches/stackx3_laptop_tests/README.md`. In short:
- `setup_test_env.sh` builds a disposable test area in `/tmp`;
- `compare_all.py` runs stackX2 and stackX3 on all 34 test groups;
- `edge_tests.sh` covers flat arguments, failures and parallel runs.

Baseline results from 2026-11-16 are in that folder, for comparison after any change.

Main results so far:
- **Groups where stackX2's offsets were all zero now align.** Nov 4 6-frame: 0 → 12 stars; 20-frame: 0 → 24; g2, g526, g528: 3–5 → 9. The new offsets match the WCS within about 1 px.
- **Groups stackX2 already aligned are unchanged.**
- **g429, g449, g471, g571 and g593 now complete** instead of crashing.
- **Data-limited groups still fail:** g272, g505 and g539 (too few stars in pt5m sparse fields), and g490 (no frame under the seeing limit).
