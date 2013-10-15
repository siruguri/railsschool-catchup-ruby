require 'nokogiri'

str=File.open(ARGV[0]).readlines.join("\n")
dom=Nokogiri::HTML.parse str
list_ofs = {}

def traverse_dom(dom, level, &block)
  
  if dom.respond_to? :name
    level.times { print " "}
    node_list = [ (yield dom) ]
    
    code = "def node_list.#{dom.name}; self.select { |item| item[:name]==\"#{dom.name}\" } end"
    eval code
  end

  if dom.respond_to? :children
#    level.times { print " "};  puts "Recursing on #{dom.class}"
    dom.children.each { |child| node_list << traverse_dom(child, level+1, &block) }
  else 
    puts dom.class
  end

#  level.times { print " "}; puts "End of recursive level"

  node_list.flatten
end

node_list = traverse_dom(dom, 0) do |node|
  {name: "#{node.name}"}
end

class Array 
  def strong
    x=self.select do |item|
      item[:name] == 'strong'
    end
  end
end

puts node_list
puts "---"
puts node_list.strong

