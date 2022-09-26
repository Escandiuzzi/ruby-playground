class Node
  attr_accessor :nxt, :previous, :value

  def initialize(value = 0, nxt = nil, previous = nil)
    @nxt = nxt
    @previous = previous
    @value = value
  end

end
