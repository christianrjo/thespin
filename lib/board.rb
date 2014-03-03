require_relative 'cell'

class Board
  def initialize(two_d_array)
    @board = cellularize two_d_array
    @current_row = 0
    @current_column = 0
  end

  def print_spiral_order
    result = []
    while result.length < target_size
      unless current_cell.visited
        current_cell.visit!
        result << current_cell.value
      end
      should_continue? ? continue : rotate!
    end
    result.join(' ')
  end

  private
  def target_size
    @target_size ||= @board.length * @board[0].length
  end

  def cellularize(two_d_array)
    two_d_array.map{ |row| row.map{ |value| Cell.new(value) } }
  end

  def should_continue?
    next_cell && !next_cell.visited
  end

  def next_cell
    @board[@current_row][@current_column + 1]
  end

  def current_cell
    @board[@current_row][@current_column]
  end

  def continue
    @current_column += 1
  end

  def rotate!
    @current_row =  @board[0].length - 1 - @current_column
    @current_column =  @current_row
    @board = @board.transpose.reverse
  end
end