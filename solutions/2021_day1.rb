class Solution
  def initialize(input)
    @input = input
  end

  def result_part_one
    @input.lines.count
  end

  def result_part_two

  end

end

puts Solution.new(File.read("inputs/day1.txt")).result_part_one
