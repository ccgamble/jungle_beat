require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/jungle_beat"


class LinkedListTest < Minitest::Test
  def test_jungle_beat_can_append_node
    jb = JungleBeat.new

    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_head_is_nil_at_default
    jb = JungleBeat.new

    assert_equal nil, jb.list.head
  end

  def test_jungle_beat_counts_nodes_appended
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    # require 'pry'; binding.pry
    assert_equal 6, jb.count
  end

  def test_plays_beat
    jb = JungleBeat.new("deep dop dop deep")
    # require 'pry'; binding.pry

    assert_equal 4, jb.play
  end

  def test_plays_beat_at_rate_of_100_and_Alice_voice
    jb = JungleBeat.new("deep dop dop deep")
    jb.rate = 100
    jb.voice = "Alice"

    assert_equal 4, jb.play
  end

  def test_reset_voice_and_rate
    jb = JungleBeat.new("deep dop dop deep")
    jb.reset_rate
    jb.reset_voice

    assert_equal 4, jb.play
  end
end
