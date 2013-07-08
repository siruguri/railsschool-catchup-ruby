require 'sqlite3'
require 'net/http'

uri_string = ARGV[0]
db = SQLite3::Database.new(ARGV[1])
r=Regexp.new(/[0-9][bB][rRaA][^0-9a-z]/)

url = URI.parse(uri_string)

req = Net::HTTP::Get.new(url.path)
res = Net::HTTP.start(url.host, url.port) do |http_conn| 
  http_conn.request(req)
end

content = res.body

matches = content.scan(r).to_s
puts matches

statement = "insert into \"test.data\" VALUES ('#{uri_string}', '#{matches}')"
puts statement
db.execute(statement)

