class Solution
  def initialize(input)
    @input = input
  end

  def result_part_one
    @input.split("\n\n").map { |elf| elf.split("\n").map(&:to_i).sum }.max
  end

  def result_part_two
    @input.split("\n\n").map { |elf| elf.split("\n").map(&:to_i).sum }.max(3).sum
  end
end

puts "Part 1: #{Solution.new(File.read("inputs/2022/day1.txt")).result_part_one}"
puts "Part 2: #{Solution.new(File.read("inputs/2022/day1.txt")).result_part_two}"
