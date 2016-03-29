require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/node"
require_relative "../lib/linked_list"


class LinkedListTest < Minitest::Test
  def test_head_is_nil_at_default
    list = LinkedList.new

    assert_equal nil, list.head
  end

  def test_list_can_append_one_beat
    list = LinkedList.new

    assert_equal "doop", list.append("doop")
  end

  def test_list_can_append_multiple_beats
    list = LinkedList.new
    list.append("doop")

    assert_equal "deep", list.append("deep")
  end

  def test_to_string_outputs_for_one_beat_appended
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("jeep")

    assert_equal "doop deep jeep", list.to_string
  end

  def test_count_counts_number_of_beats
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("jeep")

    assert_equal 3, list.count
  end


end
