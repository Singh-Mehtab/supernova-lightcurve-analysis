# stackX3 open issues

Last updated: 2026-11-16

`Astrolab_Code/py_programs/stackX3.py` is a minimal-change copy of `stackX2.py`; `stackX2.py` itself is unchanged. This file tracks the problems stackX3 still has, so any of them can be picked up later. How to use it is in `STACKX3_GUIDE.md`; the background is in `STACKX2_ISSUE_HANDOFF.md`. Laptop tests: `Astrolab_Code/lab batches/stackx3_laptop_tests/`.

**Status:** stackX3 has been tested on the laptop only, using a stand-in for arefcat on the 34 groups in the Nov 10 lab capture. Nothing has been run at the lab, the real astrometry hasn't been tested, and notebook 03 still generates stackX2 commands.

## Already fixed in stackX3

For reference, so these aren't reopened by mistake.

| Fix | Evidence from the laptop tests |
|---|---|
| Offsets measured on 3x3 median-filtered copies | On Nov 4, g2, g526 and g528, stackX2's offsets were all zero; stackX3's match the WCS within about 1 px. Nov 4 6-frame stack: 0 → 12 stars. g526 (2019) had drifted 50–65 px. |
| Automatic flat choice: pt5m uses `<band>flatnorm2x2.fits` from calibs, with earlier-night fallback; other telescopes use the most recent flat in `SHARED_FLATS` taken on or before the night (decision 2026-11-10). Exits 1 if no flat is found. | Correct flats chosen for all test groups. g155 (draco2 r, 26_10_22) gets the Epiphany 2026 r flat, 240 days old. g464 (far-east-16, 19_01_29) gets the Michaelmas 2018 flat, because the Epiphany 2019 flat was taken the next day. |
| Soft 6-month cap: a flat more than 183 days older than the data is still used, with a warning and `FLATOLD = T` in the header (decision 2026-11-10) | Tested on g155 (240 days) and on a fake pt5m night whose only flat was 298 days old. |
| `SHARED_FLATS` built from the headers of 170 master flats in the 2026-10-26 lab inventory; 12 left out (see issue 10) | |
| No writes to `~/tmp`; arefcat path configurable | Three jobs run at once gave mosaics identical to solo runs. |
| Negative offsets printed correctly; aborts exit 1 | |
| Plot crash no longer blocks astrometry | g571 and g593 now reach arefcat. |
| Pixel scale read from the current frame's header (stackX2 used the first frame's: `getscale(file2,hdr1,...)`) | This caused the getPSF `IndexError` whenever the first frame was a `d` file and later frames were `ad`. g429 now stacks 26 of 32 frames instead of crashing; g449 and g471 also complete. |
| Frames whose PSF can't be measured, or with no stars, are left out (stackX2 counted no-star frames as good) | |
| Exits 1 if arefcat writes no new `amosaic.fits` (an old one doesn't count) | Tested with a failing arefcat stand-in, with and without an old `amosaic.fits` present. |
| `east_16`-style names changed to `east-16` | |
| Wrong number of arguments prints the usage text and exits 1 | |
| Header records `FLATFILE`, `FLATMODE`, `FLATAGE`, `NFRAMES`, `NSKIPPED` (reasons in `HISTORY`) and `NWCSWARN` | |

## Open issues

Priority: **A** worth doing next, **B** do when relevant, **C** recorded only, no action planned.

### 1. East-14 pixel scale in arefcat (A)
- **Problem:** arefcat hard-codes 0.9255″/px for east-14, but the solved March–May 2019 stacks measure about 1.124″/px. Starfit starts about 21% off and usually fails.
- **Effect:** most of the March–May 2019 east-14 groups failed, and those cover the late-time SN2019np B gap (about +56 to +75 d).
- **Fix options:** (a) stackX3 calls arefcat in its four-argument mode (`arefcat.py mosaic.fits RA Dec scale`), using the mosaic's own measured scale; (b) change arefcat, which is shared lab code and needs lab agreement.
- **Before doing it:** rebuild the east-14 candidate list from logs and headers (the Nov 3 list has a g591 inconsistency). Use each mosaic's own scale, not a fixed 1.124. Test as a separate step.

### 2. TELESCOP strings in `lookup_scale` (B)
- **Problem:** the pixel scale for `d` files (no astrometry) comes from an exact match on the TELESCOP header. One entry, `'16-inch  East Dome'`, has two spaces. Anything that doesn't match falls back to 1.0″/px with only a printed warning.
- **Next step:** read-only check of the real TELESCOP values for each telescope, then correct the table if needed.

### 3. Stack doesn't beat a single frame by as much as expected (B, investigate)
- **Problem:** in the cleaned Nov 4 test, the 6-frame stack showed 34 stars against 40 in one frame. Integer-pixel shifts, flux-scale differences and the median combine are possible causes, none tested.
- **Next step:** compare noise and limiting magnitude for single frames and the stack on Nov 4 and one well-aligned group.

### 4. Frames from a different pointing are still stacked (B)
- **Problem:** stackX3 warns when the measured offset and the WCS differ by more than 3 px, and counts the warnings in `NWCSWARN`, but it doesn't drop those frames.
- **Example:** in g470, 8 frames sit about 512 px away and their WCS is clearly wrong (it predicts about 217,000 px). Dropping frames on WCS disagreement would have thrown away good data there.
- **Possible fix:** a separate check that compares star positions directly, or splitting a group at large pointing jumps. Needs a rule agreed first.

### 5. Translation-only, whole-pixel alignment (C)
- **Problem:** no rotation or flip handling, and the sub-pixel part of each offset is discarded. This adds a little blur. It's outside the minimal-change scope.

### 6. Bad pixels still included in the combination (C)
- **Problem:** the median filter is only used to measure offsets. In groups where the telescope barely moved, fixed bad pixels stay in place and survive the median combine. A bad-pixel map plus coverage map was deliberately left out of scope (decision 2026-11-10). Bad-pixel maps change between nights.

### 7. Fixed detection thresholds and minimum star counts (C)
- **Problem:** 10σ DAOStarFinder, the 55,000-count cutoff in getPSF, the 5″ seeing cut, arefcat's 5-object minimum and starfit's 5-match minimum. Sparse fields such as pt5m B (g272, g505, g539) fail because of the data, not the settings.

### 8. Stale arefcat files when rerunning in an old folder (C)
- **Problem:** arefcat doesn't delete `asc_sextr.cat`, `asc_final_match.dat`, `object_to_ignore` or `astrom.lis` before it runs. Notebook 03 already refuses to reuse a `working/g<id>` folder, so this only matters for manual reruns. Always use a fresh folder.

### 9. Current-directory mode: "no files found" never triggers (C)
- **Problem:** `ls d*.fits` returns its error message as one "filename", so an empty folder crashes in `fits.open` instead of printing the message. The mode is rarely used.

### 10. Flat questions still open (A)
The age and selection rules are decided. These remain:
- **Flat location:** confirm that the lab flats are under `/mnt/share/flatfields`. Notebook 03 uses `/home/astrolab/SNe/flatfields`, and the local copies don't hash-match the shared originals. If the path is wrong, every non-pt5m job stops with "file does not exist".
- **The table is a snapshot from 2026-10-26.** Any flat set added after that (for example a Michaelmas 2026 draco2 B or r) isn't known until it's added to `SHARED_FLATS`.
- **Mislabelled or ambiguous files left out of `SHARED_FLATS`:**
  - `flats_Mich2026/master_flat_west-14_26_10_01_B.fits`: header FILTER = V, the same exposure as the V flat. West-14 B 2026 data therefore falls back to the Epiphany 2025 B flat (about 20 months old, so it gets the soft warning). Needs lab confirmation or a real B flat.
  - `mich2019_flats/FE16_12inch/V/master_flat.fits`: header FILTER = B, the same exposure as the B flat.
  - `flats_Eph2022/east-14/C/master_flat_draco2_22_01_13_C.fits`: sits in the east-14 folder but TELESCOP is DRACO2.
  - `flats_Eph2022/far-east-20/old/B/...`: in an `old/` folder.
  - `flats_Eph2023/FE20/EoP` and `WoP` (8 files): separate flats for east and west of the pier. The right one depends on the pier side of each image, which stackX3 doesn't read. Only matters for far-east-20 data from 2023.
- **Kept, worth checking:** `flats_Eph2022/far-east-20/R/master_flat_far-east-20_22_01_05_V.fits` sits in an R folder, but its filename and header both say V, so it's listed as V. `flats_Eph2023/draco2/V` had no captured header, so its date and band come from the filename.
- **Gaps:** there are no Michaelmas sets for 2020, 2021, 2023, 2024 or 2025, and the 2020 Epiphany set is missing too. Autumn data from those years will use a January flat about 9–10 months old, with the warning.
- **Camera changes** (east-14 had MI 1508×1208 flats in Nov 2019; far-east-20 flats change size in 2024 and 2025) are handled by the size check: a flat of the wrong size is skipped and the next older one is tried.

### 11. Integration (A, before lab use)
- Notebook 03 still generates stackX2 commands. Cells for stackX3 are to be supplied for pasting.
- Anything that reads `~/tmp/mosaic_done`, `~/tmp/amosaic.fits` or `~/tmp/img_mosaic*.png` (for example the Tk caller mentioned in stackX2) will find nothing.
- Each parallel job needs its own folder with its own `automag_driver`.
- Lab validation needs a written test plan: real arefcat, `/mnt/archive`, and the shared flat paths.

### 12. Calibration questions outside the stacker (C)
- The 60 s master dark scaled to 120 s over-subtracts hot pixels. The cause is unresolved.
- Pt5m drift of about 5 px per frame and elongated stars on Nov 4 may point to a tracking fault. Raise it with lab staff.
