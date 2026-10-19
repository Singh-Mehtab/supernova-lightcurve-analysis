import argparse
import csv
import math
from pathlib import Path

parser = argparse.ArgumentParser()

parser.add_argument("input")
parser.add_argument("output")

args = parser.parse_args()


values = ["", "", "", "", ""]
status = "step 1"

log = Path("zpts.log")





if log.exists():
    status = "step 2"
    lines = log.read_text().splitlines()


    for line in reversed(lines):
        parts = line.split()

        if not parts:
            continue

        filename = Path(parts[0]).name
        
        wanted_file = Path(args.input).name

        if filename != wanted_file:
            continue

        if len(parts) != 6:
            status = "step 3"
            break

        try:
            numbers = []

            for item in parts[1:]:
                numbers.append(float(item))

            values = numbers
            
            status = "done"

        
            for number in values:
                if not math.isfinite(number):
                    
                    status = "step 4"

        except ValueError:
            status = "step 5"

        break

output = Path(args.output)


needs_header = True

if output.exists():
    if output.stat().st_size > 0:
        needs_header = False

with output.open("a", newline="", encoding="utf-8") as file:
    writer = csv.writer(file)

    if needs_header:
        writer.writerow([
            "filename", "mean", "median", "weighted_mean",
            "stdev", "zpt_err", "status"
        ])

    row = [args.input] + values + [status]
    writer.writerow(row)

print(args.input, status)
