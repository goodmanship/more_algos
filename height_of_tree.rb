class Node
  attr_reader :value
  attr_accessor :left, :right
  def initialize(value)
    @value = value
  end
end

def push_node(node, value)
  if node.left.nil?
    node.left = Node.new(value)
  elsif node.right.nil?
    node.right = Node.new(value)
  else
    push_node(node.left, value)
  end
end

def solution(tree)
  root = Node.new(tree.shift)
  
end
# def solution(tree)
#     return 0 if tree.length == 0
#     return 1 if tree.length == 1
#     Math.log2(tree.length - 1).ceil + 1
# end

# Path
# Failed
# Input:
# tree: [1, -1, 1, -1, -1, -1, 1]
# Expected Output:
# 3
# Output:
# 4

# input:
# tree: [1, 1, -1, 1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]
# Expected Output:
# 5
# Output:
# 6


puts tree_crawl([1, 1, -1, 1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1])
puts "should be 5"

def level_order(root, result = [], level = 0)
  return result unless root

  result << [] if result.length == level
  result[level] << root.val
  level_order(root.left, result, level + 1)
  level_order(root.right, result, level + 1)
end

def level_order(root)
  result = []
  return result if root.nil?

  queue = []
  queue << root

  until queue.empty?
    level_size = queue.length
    level = []
    level_size.times do
      node = queue.shift
      level << node.val
      queue << node.left unless node.left.nil?
      queue << node.right unless node.right.nil?
    end
    result << level
  end

  result
end

def make_tree(a)
  
  while a.length > 0
    add_node()
  end
end