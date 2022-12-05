class Solution
  def initialize(input)
    @input = input
  end

  def split_rucksack(rucksack)
    rucksack.chars.each_slice(rucksack.size / 2).map(&:join)
  end

  def find_common_item_type(split_rucksack)
    first_half = split_rucksack.first.chars.to_set
    second_half = split_rucksack.last.chars.to_set
    (first_half & second_half).to_a
  end

  def calculate_priority(priority)
    arr = ("a".."z").to_a + ("A".."Z").to_a
    priorities = {}
    arr.each.with_index(1) { |char, index| priorities[char] = index }
    priorities[priority]
  end

  def result_part_one
    rucksack_arr = @input.lines.map(&:strip)
    split_rucksacks = rucksack_arr.map { |rucksack| split_rucksack(rucksack) }
    priorities = split_rucksacks.map { |split_rucksack| find_common_item_type(split_rucksack) }.flatten
    priorities.map { |priority| calculate_priority(priority) }.sum
  end

  def group_rucksacks(rucksack_arr)
    rucksack_groups = []
    rucksack_arr.each_slice(3) { |group| rucksack_groups << group }
    rucksack_groups
  end

  def find_group_badge(rucksack_group)
    rucksack_group.map do |group|
      first_rucksack = group[0].chars.to_set
      second_rucksack = group[1].chars.to_set
      third_rucksack = group[2].chars.to_set
      (first_rucksack & second_rucksack & third_rucksack).to_a
    end
  end

  def result_part_two
    rucksack_arr = @input.lines.map(&:strip)
    rucksack_groups = group_rucksacks(rucksack_arr)
    badges = find_group_badge(rucksack_groups).flatten
    badges.map { |priority| calculate_priority(priority) }.sum
  end
end

puts "Part 1: #{Solution.new(File.read("inputs/2022/day3.txt")).result_part_one}"
puts "Part 2: #{Solution.new(File.read("inputs/2022/day3.txt")).result_part_two}"
