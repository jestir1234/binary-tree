require 'byebug'
class Node

  @@nodes = []

  attr_accessor :value, :parent, :left_child, :right_child, :children

  def initialize(value)
    @@nodes << self

    @value = value
    @children = []
    @left_child = nil
    @right_child = nil
    @parent = nil

    if @@nodes.count > 1
      crawler(@@nodes[0])
    end
  end


  def crawler(next_node)
    if next_node.children.empty?
      if value > next_node.value
        next_node.right_child = self
        next_node.children << self
      else
        next_node.children << self
        next_node.left_child = self
      end
      @parent = next_node
      return
    end

    if value <= next_node.value
      if !next_node.left_child.nil?
        crawler(next_node.left_child)
      else
        next_node.left_child = self
        next_node.children << self
        @parent = next_node
      end
    else
      if !next_node.right_child.nil?
        crawler(next_node.right_child)
      else
        next_node.right_child = self
        next_node.children << self
        @parent = next_node
      end
    end

  end



  def self.print_nodes
    @@nodes.each do |node|
      puts node.value
    end
  end

  def self.print_tree
    @@nodes.each do |node|
      puts "_____________#{node.value}_______________"
      puts "|                            |"
      puts "|                            |"
      node.left_child.nil? ? left_child = "" : left_child = node.left_child.value
      node.right_child.nil? ? right_child = "" : right_child = node.right_child.value
      indent_left = Node.indent(left_child)
      indent_right = Node.indent(right_child)
      puts "#{left_child}#{indent_left}.........................#{indent_right}#{right_child}"
    end
  end

  def self.indent(child)
    digits = child.to_s.split("").count
    case digits
    when 0
      ".."
    when 1
      ".."
    when 2
      "."
    when 3
      ""
    end
  end

  def self.get_root_node
    @@nodes[0]
  end

end

def build_tree(array)
  array.each do |num|
    Node.new(num)
  end
end

def breadth_first_search(value, queu = [Node.get_root_node])

  until !queu.first.nil? || queu.empty?
    queu.shift
  end

  node = queu.first

  if queu.empty?
    return nil
  end

  puts "Searching node #{node.value}...."

  if !node.value.nil?
    if node.value == value
      puts "Found #{node.value} at node #{node}!"
      return node
    end
  else
    nil
  end


  left_child = node.left_child
  right_child = node.right_child

  queu << left_child << right_child

  if !left_child.nil?
    puts "Left child is #{left_child.value}."
  else
    puts "No left child."
  end

  if !right_child.nil?
    puts "Right child is #{right_child.value}"
  else
    puts "No right child."
  end

  queu.shift

  breadth_first_search(value, queu)
end

#Depth first search with stack
def depth_first_search(value, stack = [Node.get_root_node])
  node = stack[0]

  if !node.value.nil?
    puts "Searching node #{node.value}..."
    if node.value == value
      puts "Found #{value} at node #{node}!"
      return node
    end
  end

  left_child = node.left_child
  right_child = node.right_child

  if !left_child.nil?
    puts "Left child is #{left_child.value}."
  else
    puts "No left child."
  end

  if !right_child.nil?
    puts "Right child is #{right_child.value}."
  else
    puts "No right child."
  end

  if !left_child.nil?
    stack << left_child
    stack.shift
    return node if !depth_first_search(value, stack).nil?
  else
    nil
  end

  if !right_child.nil?
    stack << right_child
    stack.shift
    return node if !depth_first_search(value, stack).nil?
  else
    nil
  end

end

#Depth first search w/ Recursion
def dfs_rec(value, node = Node.get_root_node)

  if !node.nil?
    puts "Searching node #{node.value}"
    if !node.value.nil?
      if node.value == value
        puts "Found #{value} at node #{node}!"
        return node
      end
    end
  else
    nil
  end

  left_child = node.left_child
  right_child = node.right_child

  if left_child.nil?
    puts "No left child."
  else
    puts "Left child is #{left_child.value}"
  end

  if right_child.nil?
    puts "No right child."
  else
    puts "Right child is #{right_child.value}."
  end

  left_child.nil? ? nil : dfs_rec(value, left_child)
  right_child.nil? ? nil : dfs_rec(value, right_child)
end
