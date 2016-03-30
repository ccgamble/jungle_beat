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
    require 'pry'; binding.pry
    assert_equal 6, jb.count
  end
end
