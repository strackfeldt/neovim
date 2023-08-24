import sys
import sqlparse

# TODO: Decide what to do about $/?
# contents = contents.replace(f"${identifier}", f"__id_{identifier}")

contents = sys.stdin.read()
for identifier in range(10):
    contents = contents.replace(f"?{identifier}", f"__id_{identifier}")


result = sqlparse.format(contents
                         , indent_columns=True
                         , keyword_case='upper'
                         , identifier_case='lower'
                         , reindent=True
                         , output_format='sql'
                         , indent_after_first=False
                         , wrap_after=80
                         , comma_first=False
                         )

for identifier in range(10):
    result = result.replace(f"__id_{identifier}", f"?{identifier}")

print(result.strip())
