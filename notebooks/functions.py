import re
import datetime as dt
import ast


def remove_whitespace_from_column_names(df):
  # Remove leading and trailing spaces from column names
  df2 = df.copy()
  df2.columns = [column.strip() for column in df2.columns]
  return df2


def trim_and_lower_strings(df):
  df2 = df.copy()
  # Use applymap() with a lambda function to trim and lower strings in all columns
  df2 = df2.apply(lambda x: x.strip() if isinstance(x, str) else x)
  df2 = df2.apply(lambda x: x.lower() if isinstance(x, str) else x)
  return df2


def trim_and_lower(df):
  df2 = df.copy()

  df2.columns = [column.strip() for column in df2.columns]
  df2.columns = [column.strip().replace(" ", "_").lower() for column in df2.columns]

  df2 = df2.map(lambda x: x.replace("\xa0", " ") if isinstance(x, str) else x)
  df2 = df2.map(lambda x: x.strip() if isinstance(x, str) else x)
  df2 = df2.map(lambda x: x.lower() if isinstance(x, str) else x)

  return df2


def extract_string_in_parentheses(text):
  # Define a regular expression pattern to match strings inside parentheses
  pattern = r'\((.*?)\)'
  
  # Use re.findall to find all matches of the pattern in the text
  matches = re.findall(pattern, text)
    
  # If matches are found, return the first match (string inside parentheses)
  # Otherwise, return None
  if matches:
    return matches[0]
  else:
    return "unknown"


def drop_non_numbers(string):
    numbers_str = re.sub(r'[^\d.]', '', string)
    number = round(float("".join(numbers_str)), 2)
    return number


def time_parts(time):
    try:
        char_to_drop = ["h", "'", '"', "′", "″", "+"]
        for char in char_to_drop:
            time = time.replace(char, "")    
        parts = time.split()
        parts = [int(p) for p in parts]
        if len(parts) == 2:
            parts.insert(0, 0)
        elif len(parts) == 1:
            parts.insert(0, 0)
            parts.insert(1, 0)
        return parts
    except:
        parts = [0, 0, 0]
        #return ["none"] # FIX THIS SO IT RETURNS THE CORRECT VALUE
        return parts


def duration_in_hours(time_list):
  if type(time_list) == str:
    time_list = ast.literal_eval(time_list)
  hours = time_list[0]
  minutes = time_list[1]
  seconds = time_list[2]
  total_duration = dt.timedelta(hours=hours, minutes=minutes, seconds=seconds)
  total_hours = total_duration.total_seconds()/3600
  return total_hours


def calculate_decade(year):
    s = str(year)
    decade = int(s[:3])*10
    return decade

def remove_country(s):
    pattern = r"[\[\(].*$"
    s = re.sub(pattern, "", s).strip()
    return s


def convert_to_upper(x):
    if x is None or not isinstance(x, str):
        return x
    return ''.join([c.upper() if c.isalpha() else c for c in x])
