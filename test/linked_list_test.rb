gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/linked_list"
require "./lib/node"


class NodeTest < Minitest::Test
  def test_head_is_nil_at_default
    list = LinkedList.new

    assert_equal nil, list.head
  end

  def test_list_can_append_one_beat
    list = LinkedList.new

    assert_equal "doop", list.append("doop")

  end


end
