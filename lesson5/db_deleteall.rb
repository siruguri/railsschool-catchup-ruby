require 'sqlite3'

db = SQLite3::Database.new('test.db')

rows = db.execute ("delete from \"test.data\"")

