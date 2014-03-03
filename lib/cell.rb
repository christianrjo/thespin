class Cell
  attr_reader :value, :visited
  def initialize(value)
    @value = value
    @visited = false
  end

  def visit!
    @visited = true
  end
end