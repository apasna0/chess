lines = File.open("data.txt", 'r').read.split("\n").drop(1)
boards = []
result = []
lines.each do |line|
  boards << line.split.map(&:to_i)
end
result << boards.transpose.map {|x| x.reduce(:+)}
complect = [8, 2, 2, 2, 1, 1]
complect.each_with_index do |elem, index|
  result[index] = result[index] / elem
end

puts result.min
