class Solution
  def initialize(input)
    @input = input
  end

  def result_part_one
    day0 = @input.split(",").map(&:to_i)
    day_cycle(day0, 80)
  end

  def day_cycle(day0, days_left)
    arr = []
    return day0.length if days_left.zero?

    day0.each do |days_until_breed|
      if days_until_breed.zero?
        arr << 6
        arr << 8
      else
        arr << (days_until_breed - 1)
      end
    end
    day_cycle(arr, days_left - 1)
  end

  def result_part_two_spec
    day0 = @input.split(",").map(&:to_i)
    day0_hash = day0.tally
    day_cycle2(day0_hash, 80)
  end

  def result_part_two
    day0 = @input.split(",").map(&:to_i)
    day0_hash = day0.tally
    day_cycle2(day0_hash, 256)
  end

  def day_cycle2(day0, days_left)
    hash = {}
    return day0.values.sum if days_left.zero?

    becoming_a_six = day0[0] || 0
    day0.each do |key, value|
      hash[key - 1] = value unless key.zero?
    end
    if hash[6]
      hash[6] += becoming_a_six
    else
      hash[6] = becoming_a_six
    end
    hash[8] = becoming_a_six
    day_cycle2(hash, days_left - 1)
  end
end

puts "Part 1: #{Solution.new(File.read("inputs/2021/day6.txt")).result_part_one}"
puts "Part 2: #{Solution.new(File.read("inputs/2021/day6.txt")).result_part_two}"
