require_relative 'board'
require_relative 'parser'

# filename = Parser.parse(File.read(ARGV[0]))
# puts Board.new(filename).print_spiral_order

File.open(ARGV[0]).each_line do |line|
  board = Parser.parse(line)
  if board != nil
    puts Board.new(board).print_spiral_order  
  end
end