class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

# 
# node = Node.new ("plop")
# node.data
# node.next_node
