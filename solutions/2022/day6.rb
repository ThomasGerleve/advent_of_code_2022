class Solution
  def initialize(input)
    @input = input
  end

  def result_part_one
    @input.strip.chars.each_cons(4).with_index do |chars, index|
      break index + 4 if chars == chars.uniq
    end
  end

  def result_part_two
    @input.strip.chars.each_cons(14).with_index do |chars, index|
      break index + 14 if chars == chars.uniq
    end
  end
end

puts "Part 1: #{Solution.new(File.read("inputs/2022/day6.txt")).result_part_one}"
puts "Part 2: #{Solution.new(File.read("inputs/2022/day6.txt")).result_part_two}"
