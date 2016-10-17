lines = File.open('duom.txt', 'r').read.split("\n").drop(1)

boards = []

lines.each do |line|
 boards << line.split.map(&:to_i)
end

result = Array.new(6, 0)
boards.each do |board|
  board.size.times do |index|
    result[index] += board[index]
  end
end

complete_boards =[
 result[0] / 8,
 result[1] / 2,
 result[2] / 2,
 result[3] / 2,
 result[4] / 1,
 result[5] / 1
]

puts complete_boards.min

#puts boards.transpose.map {|x| x.reduce(:+)}
