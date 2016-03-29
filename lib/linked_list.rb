require_relative 'node'

class LinkedList
  attr_accessor :head


  def initialize(head = nil)
    @head = head
    @count = 0
  end

  # def append(value)
  #   if @head.nil?
  #     @head = Node.new(value)
  #   elsif
  #     current_node = @head
  #     while current_node.next
  #       current_node = current_node.next
  #   else
  #     current_node = @next_node
  #     while current_node.next_node
  #       current_node = current_node.next_node
  #       end
  #       current_node.next = Node.new(value)
  #     end
  #   end
  # end


  def append(data)
    @count += 1
    if @head == nil
      @head = Node.new(data)
    else
      @head
    end
    @head.data
  end

  def count
    @count
  end

  def to_s
    @head.data
  end
end
