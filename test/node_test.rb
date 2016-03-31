require_relative "test_helper"
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/node"

class NodeTest < Minitest::Test
  def test_node_knows_its_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_node_knows_its_next_node
    n1 = Node.new("plop")
    n2 = Node.new("ding")
    n1.next_node = n2
    assert_equal n2, n1.next_node
  end
end
