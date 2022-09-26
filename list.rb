require_relative 'node'

class List
  :first
  :last
  :count

  def initialize
    super
    @count = 0
  end

  def add(value)
    node = Node.new value
    node.value = value
    if @count == 0
      @first = node
      @last = @first
    elsif @count == 1
      @last = node
      @last.nxt = @first
      @first.previous = @last
    else
      node.nxt = @last
      @last.previous = node
      @last = node
    end
    @count += 1
  end

  def print_all_items
    current = @last
    while (current != nil)
      puts current.value
      current = current.nxt
    end
  end

end
