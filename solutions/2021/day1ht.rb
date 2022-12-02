class Solution
  def initialize(input)
    @input = input
  end

  def result_part_one
    horizontal = 0
    depth = 0
    @input.lines.each do |line|
      direction, distance_str = line.split
      distance = distance_str.to_i
      case direction
      when "forward"
        horizontal += distance
      when "up"
        depth -= distance
      when "down"
        depth += distance
      end
    end
    horizontal * depth
  end

  def result_part_two
  end
end

puts Solution.new(File.read("inputs/2021/day1.txt")).result_part_one
