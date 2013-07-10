# Read a webpage

fetch_obj = ...
uri = 

resp = fetch_obj.fetch(uri)


content = resp.content()

pattern_object = ... # Let's use regular expressions on the HTML source directly

matched_text = content.find_matches(pattern_object)


db_object = ... # Let's use SQLite3

statement = 'INSERT INTO ... #{matched_text}'

db_object.run_statement(statement)

