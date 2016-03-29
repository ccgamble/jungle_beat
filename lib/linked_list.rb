require_relative 'node'

class LinkedList
  attr_accessor :head


  def initialize(head = nil)
    @head = head
    @count = 0
  end


  def append(data)
    @count += 1
    if @head == nil
      @head = Node.new(data)
    else
      append_next_node(@head, data)
    end
    data
  end

  def append_next_node(current_node, data)
    if current_node.next_node == nil
      current_node.next_node = Node.new(data)
    else
      append_next_node(current_node.next_node, data)
    end
  end


  def count
    @count
  end

  def to_string
    if @head.nil?
      ""
    else
      add_to_string_array(@head)
    end
  end

  def add_to_string_array(current_node, string_array = [])
    if current_node.next_node.nil?
      string_array.push(current_node.data)
    else
      string_array.push(current_node.data)
      add_to_string_array(current_node.next_node, string_array)
    end
    string_array.join(" ")
  end
end
