# Read a webpage


require 'open-uri'
content = open('http://www.yahoo.com')



# Let's use regular expressions on the HTML source directly
pattern_object = Regexp.new("<title>.*</title>")
matched_text = content.scan(pattern_object)


db_object = ... # Let's use SQLite3

statement = 'INSERT INTO ... #{matched_text}'

db_object.run_statement(statement)

