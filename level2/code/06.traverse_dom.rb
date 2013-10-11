require 'nokogiri'

str=File.open(ARGV[0]).readlines.join("\n")
dom=Nokogiri::HTML.parse str

def traverse_dom(dom, level, &block)

  if dom.respond_to? :name
    level.times { print " "};  yield dom
  end

  if dom.respond_to? :children
    level.times { print " "};  puts "Recursing on #{dom.class}"
    dom.children.each { |child| traverse_dom(child, level+1, &block) }
  else 
    puts dom.class
  end

  level.times { print " "}; puts "End of recursive level"
end

traverse_dom(dom, 0) do |node|
  puts "#{node.name}"
end
