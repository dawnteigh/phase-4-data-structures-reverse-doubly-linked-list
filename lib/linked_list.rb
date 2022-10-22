require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    if head && head != tail
      node = head
      @head = tail
      @tail = node
      puts head.prev_node
      head.reverse_node
      tail.reverse_node
      puts head.prev_node

      current = head.next_node
      until current.next_node.nil? do
        current.reverse_node
        current = current.next_node
      end
      puts head.prev_node
    end
  end

end
