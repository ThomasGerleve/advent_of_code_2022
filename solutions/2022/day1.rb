class Solution
  def initialize(input)
    @input = input
  end

  def result_part_one
    @number_of_elf = 1
    calories_per_elf = {}
    @input.lines.each do |line|
      calories = line.strip.to_i
      calories.zero? ? new_elf : add_to_elf(calories_per_elf, @number_of_elf, calories)
    end
    calories_per_elf.values.max
  end

  def add_to_elf(hash, number_of_elf, calories)
    if hash[number_of_elf]
      (hash[number_of_elf] += calories)
    else
      (hash[number_of_elf] = calories)
    end
  end

  def new_elf
    @number_of_elf += 1
  end

  def result_part_two
    @number_of_elf = 1
    calories_per_elf = {}
    @input.lines.each do |line|
      calories = line.strip.to_i
      calories.zero? ? new_elf : add_to_elf(calories_per_elf, @number_of_elf, calories)
    end
    calories_per_elf.values.max(3).sum
  end
end

puts "Part 1: #{Solution.new(File.read("inputs/2022/day1.txt")).result_part_one}"
puts "Part 2: #{Solution.new(File.read("inputs/2022/day1.txt")).result_part_two}"
