require_relative '../lib/linked_list'

class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  def append(string)
  array = string.split(" ")
  array.each do |node|
    @list.append(node)
  end
  array.join(" ")
end

  def count
    @list.count
  end
end
