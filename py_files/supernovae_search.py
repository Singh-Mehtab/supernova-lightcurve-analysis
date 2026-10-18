import argparse
import sqlite3
from pathlib import Path
import calendar as pycalendar
from datetime import date


database_path = Path("/Users/mehtabsingh/Desktop/Desktop/Durham/3rd Year/Modules/Astro Lab/Astrolab_Code/Durham_Observation_Database.db").resolve()

conn = sqlite3.connect(database_path)





####### Functions #######
def get_overview(conn):
    sql = """
        SELECT
            CASE
                WHEN UPPER(TRIM(object)) LIKE 'SN%'
                    THEN 'SN' || LOWER(SUBSTR(TRIM(object), 3))
                ELSE 'AT' || LOWER(SUBSTR(TRIM(object), 3))
            END AS target,
            COUNT(DISTINCT obs_date) AS nights,
            COUNT(*) AS exposures,
            MIN(obs_date) AS first_night,
            MAX(obs_date) AS latest_night,
            GROUP_CONCAT(DISTINCT telescope) AS telescopes,
            GROUP_CONCAT(DISTINCT filter) AS filters
        FROM observations
        WHERE UPPER(TRIM(object)) LIKE 'SN%'
            OR UPPER(TRIM(object)) LIKE 'AT%'
        GROUP BY UPPER(TRIM(object))
        HAVING MAX(obs_date) >= ?
        ORDER BY latest_night DESC, target
    """

    return conn.execute(sql, ("2026-07-01",)).fetchall()


    
def print_overview(rows):
   headers = [
       "Target", "Nights", "Exposures", "First night",
       "Latest night", "Telescopes", "Filters"
   ]

   # Convert values to text; show missing values as blank.
   table_rows = [
       ["" if value is None else str(value) for value in row]
       for row in rows
   ]

   # Set each column wide enough for its heading or longest value.
   widths = []
   for i, header in enumerate(headers):
       widest = len(header)
       for row in table_rows:
           widest = max(widest, len(row[i]))
       widths.append(widest)

   def format_row(values):
       cells = [
           " " + value.ljust(widths[i]) + " "
           for i, value in enumerate(values)
       ]
       return "│" + "│".join(cells) + "│"

   def border(left, join, right):
       sections = ["─" * (width + 2) for width in widths]
       return left + join.join(sections) + right

   print(border("┌", "┬", "┐"))
   print(format_row(headers))
   print(border("├", "┼", "┤"))

   for row in table_rows:
       print(format_row(row))

   print(border("└", "┴", "┘"))

    


def get_target_details(conn, target_name):
    sql = """
        SELECT
            UPPER(TRIM(object)) AS target,
            TRIM(obs_date) AS date,
            TRIM(telescope) AS telescope,
            TRIM(img_num) AS img_num,
            TRIM(filter) AS filter,
            (exp_time) AS exp_time,
            TRIM(start_time) AS start_time,
            (fwhm) AS fwhm,
            TRIM(url_source) AS url
        FROM observations
        WHERE UPPER(TRIM(object)) = UPPER(?)
        ORDER BY obs_date DESC, telescope, CAST(img_num AS INTEGER) 
    """
    return conn.execute(sql, (target_name,)).fetchall()
    
def print_target_details(full_target_details):

    groups={}

    for row in full_target_details:
        target, night, telescope, img_num, band, exp_time, start_time, fwhm, url = row
        
        key = (night, telescope, band, exp_time, url)

        if key not in groups:
            groups[key]=[]

        groups[key].append(row)


    headers = [ "Night", "Telescope", "Filter", "Exposure (s)",
                "# of Images", "Image ranges", 'Mean FWHM (")',
              ]
    table_rows =[]
    
    for key, exposures in groups.items():
        night, telescope, band, exp_time, url = key

        image_ranges = get_image_ranges(exposures)
        
        avg_fwhm=calc_avg_fwhm(exposures)

        if avg_fwhm is None:
            fwhm_output = "-"
        else:
            fwhm_output = f"{avg_fwhm:.2f}"
        
        table_rows.append([
            night,
            telescope,
            band,
            str(exp_time),
            str(len(exposures)),
            image_ranges,
            fwhm_output
        ])

    widths = []

    for i, header in enumerate(headers):
        widest = len(header)

        for row in table_rows:
            widest = max(widest, len(row[i]))

        widths.append(widest)

    def format_row(values):
        cells = [
            " " + value.ljust(widths[i]) + " "
            for i, value in enumerate(values)
        ]

        return "│" + "│".join(cells) + "│"

    def border(left, join, right):
        sections = ["─" * (width + 2) for width in widths]
        return left + join.join(sections) + right

    def day_separator():
        sections = ["┈" * (width + 2) for width in widths]
        return "├" + "┼".join(sections) + "┤"

    print(border("┌", "┬", "┐"))
    print(format_row(headers))
    print(border("├", "┼", "┤"))

    for i, row in enumerate(table_rows):
        print(format_row(row))

        if i < len(table_rows) - 1 and row[0] != table_rows[i + 1][0]:
            print(day_separator())
            
    print(border("└", "┴", "┘"))


def calc_avg_fwhm(inputs):
    fwhm_values = []
    fwhm_total = 0
    
    for row in inputs:
        fwhm = row[7]

        if fwhm is not None:
            fwhm_values.append(fwhm)
            fwhm_total = fwhm_total + fwhm

    if len(fwhm_values) == 0:
        return None

    return (fwhm_total)/(len(fwhm_values))

def get_image_ranges(exposures):
    numbers = sorted({row[3] for row in exposures}, key=int)

    if not numbers:
        return "-"

    ranges = []
    start = numbers[0]
    previous = numbers[0]

    for number in numbers[1:]:
        if int(number) != int(previous) + 1:
            if start == previous:
                ranges.append(start)
            else:
                ranges.append(f"{start}-{previous}")
 
            start = number
 
        previous = number
 
    # Add the final range.
    if start == previous:
        ranges.append(start)
    else:
        ranges.append(f"{start}-{previous}")

    return ", ".join(ranges)



def print_calendar(rows):
   if not rows:
       print("No observations to show.")
       return

   # Map each observing date to the telescopes used that night.
   telescopes_by_date = {}

   for row in rows:
       observing_date = date.fromisoformat(row[1])
       telescope = row[2]

       telescopes_by_date.setdefault(observing_date, set()).add(telescope)

   # Give each telescope a consistent terminal colour.
   #palette = [33, 39, 45, 135, 208,  green := 40]
  # palette = [33, 39, 45, 135, 208, 40]
   palette = [203, 78, 221, 75, 176, 208]
   telescope_names = sorted({
       telescope
       for telescopes in telescopes_by_date.values()
       for telescope in telescopes
   })
   colours = {
       telescope: palette[i % len(palette)]
       for i, telescope in enumerate(telescope_names)
   }

   def colour_cell(text, telescope):
       return f"\033[48;5;{colours[telescope]}m{text}\033[0m"

   def make_month(year, month):
       cell_width = 3
       panel_width = 29
       horizontal = "├" + "┼".join(["─" * cell_width] * 7) + "┤"
       top = "┌" + "┬".join(["─" * cell_width] * 7) + "┐"
       bottom = "└" + "┴".join(["─" * cell_width] * 7) + "┘"

       title = f"{pycalendar.month_name[month]} {year}".center(panel_width)
       lines = [title, top, horizontal] #[top, f"│{title}│", horizontal]

       weeks = pycalendar.Calendar(firstweekday=0).monthdayscalendar(year, month)
       weeks += [[0] * 7 for _ in range(6 - len(weeks))]

       for week_index, week in enumerate(weeks):
           cells = []

           for day in week:
               if day == 0:
                   cells.append("   ")
                   continue

               observing_date = date(year, month, day)
               telescopes = sorted(telescopes_by_date.get(observing_date, set()))

               if not telescopes:
                   cells.append("   ")
               elif len(telescopes) == 1:
                   cells.append(colour_cell("   ", telescopes[0]))
               else:
                   # Two colours show two telescopes. A '+' flags 3 or more.
                   first = colour_cell(" ", telescopes[0])
                   second = colour_cell(" ", telescopes[1])
                   marker = "+" if len(telescopes) > 2 else " "
                   cells.append(first + second + marker)

           lines.append("│" + "│".join(cells) + "│")

           if week_index < 5:
               lines.append(horizontal)

       lines.append(bottom)
       return lines

   months = sorted({(day.year, day.month) for day in telescopes_by_date})
   panels = [make_month(year, month) for year, month in months]

   # Put two months side by side on each output row.
   for i in range(0, len(panels), 2):
       left = panels[i]
       right = panels[i + 1] if i + 1 < len(panels) else None

       if right is None:
           print("\n".join(left))
       else:
           for left_line, right_line in zip(left, right):
               print(left_line + "   " + right_line)

   print("\nTelescope colours:")
   for telescope in telescope_names:
       print(f"  {colour_cell('   ', telescope)} {telescope}")

   if any(len(telescopes) > 2 for telescopes in telescopes_by_date.values()):
       print("  + means three or more telescopes observed that night.")




####### Actual Code #######

parser = argparse.ArgumentParser()
parser.add_argument("input")
args=parser.parse_args()


if args.input.lower() == "sn":
    print("General output:")
    output = get_overview(conn)
    print(f"Found {len(output)} targets:")
    
    
    print_overview(output)
    
else:
    print(f"Detailed output for {args.input}")

    output = get_target_details(conn, args.input)

    print_calendar(output)
    print_target_details(output)








