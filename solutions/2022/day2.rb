class Solution
  def initialize(input)
    @input = input
  end

  SCORES_PART_1 = {
    "A X" => 4,
    "A Y" => 8,
    "A Z" => 3,
    "B X" => 1,
    "B Y" => 5,
    "B Z" => 9,
    "C X" => 7,
    "C Y" => 2,
    "C Z" => 6,
  }.freeze

  SCORES_PART_2 = {
    "A X" => 3,
    "A Y" => 4,
    "A Z" => 8,
    "B X" => 1,
    "B Y" => 5,
    "B Z" => 9,
    "C X" => 2,
    "C Y" => 6,
    "C Z" => 7,
  }.freeze

  def result_part_one
    lines_arr = @input.lines
    each_game_arr = lines_arr.map(&:strip)
    each_game_arr.map { |game| SCORES_PART_1[game] }.sum
  end

  def result_part_two
    lines_arr = @input.lines
    each_game_arr = lines_arr.map(&:strip)
    each_game_arr.map { |game| SCORES_PART_2[game] }.sum
  end
end

puts "Part 1: #{Solution.new(File.read("inputs/2022/day2.txt")).result_part_one}"
puts "Part 2: #{Solution.new(File.read("inputs/2022/day2.txt")).result_part_two}"
