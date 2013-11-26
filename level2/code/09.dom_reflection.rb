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

# node_list is an array
node_list = traverse_dom(dom, 0) do |node|
  {name: "#{node.name}"}
end
puts node_list
puts "---"

node_list.each do |h|
  method_name = h[:name]
  code=<<EOF
define_method method_name do
    x=self.select do |item|
      item[:name] == h[:name]
    end
  end
EOF

  Array.instance_eval code
end

# This should print out all nodes in the dom that have the name 'strong'
puts "All strong nodes"
puts node_list.strong

# This should print out all nodes in the dom that have the name 'div'
puts "All div nodes"
puts node_list.div


