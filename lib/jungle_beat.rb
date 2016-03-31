require_relative '../lib/linked_list'

class JungleBeat
  attr_accessor :list, :beat, :rate, :voice
  def initialize(beat = nil)
    @beat = beat
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
  end

  def append(string)
    split_nodes = string.split(" ")
    split_nodes.each do |node|
      @list.append(node)
    end
    split_nodes.join(" ")
  end

  def count
    @list.count
  end

  def play
   `say -r #{@rate} -v #{@voice} #{@beat}`
    @beat.split.count
 end

 def reset_rate
   @rate = 500
 end

 def reset_voice
   @voice = "Boing"
 end
end
