import re

match_rule = re.compile(r"Cat(erpiller|astrophe|egory|ch)")
search_result = match_rule.search("My favorite Category is IOT hacking")
print(search_result.group())
print(search_result.group(1))