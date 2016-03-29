require 'minitest'              # => true
require 'minitest/autorun'      # => true
require 'minitest/pride'        # => true
require_relative "../lib/node"  # => true

class NodeTest < Minitest::Test  # => Minitest::Test


  def test_node_knows_its_data
    node = Node.new("plop")         # => #<Node:0x007fa22c8b9b58 @data="plop", @next_node=nil>
    assert_equal "plop", node.data  # => true
  end                               # => :test_node_knows_its_data

  def test_node_knows_its_next_node
    n1 = Node.new("plop")            # => #<Node:0x007fa22c8b9388 @data="plop", @next_node=nil>
    n2 = Node.new("ding")            # => #<Node:0x007fa22c8b9130 @data="ding", @next_node=nil>
    n1.next_node = n2                # => #<Node:0x007fa22c8b9130 @data="ding", @next_node=nil>
    assert_equal n2, n1.next_node    # => true
  end                                # => :test_node_knows_its_next_node
end                                  # => :test_node_knows_its_next_node

# >> Run options: --seed 4596
# >>
# >> # Running:
# >>
# >> ..
# >>
# >> Finished in 0.001261s, 1586.4756 runs/s, 1586.4756 assertions/s.
# >>
# >> 2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
