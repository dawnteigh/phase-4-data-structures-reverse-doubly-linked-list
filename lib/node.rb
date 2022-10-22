class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value, next_node = nil, prev_node = nil)
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end

  def reverse_node
    prv = next_node
    @next_node = prev_node
    @prev_node = prv
  end
end
