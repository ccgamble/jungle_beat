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

  def prepend(beat)
    insert(0, beat)
  end

  def insert(start_point, data)
    @count += 1
    data.split.each_with_index do |beat, index|
      insert_node(start_point + index, Node.new(beat))
    end
    data.to_s
  end

  def insert_node(start_point, new_node)
    current_node = @head
    if start_point == 0
      new_node.next_node = current_node
      @head = new_node
    else
      (start_point - 1).times do
        current_node = current_node.next_node
      end
      spot = current_node.next_node
      new_node.next_node = spot
      current_node.next_node = new_node
    end
  end

end
