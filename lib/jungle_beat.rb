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
    array = string.split(" ")
    array.each do |node|
      @list.append(node)
    end
    array.join(" ")
  end

  def count
    @list.count
  end

  def play(rate = 500, voice = "Boing")
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
