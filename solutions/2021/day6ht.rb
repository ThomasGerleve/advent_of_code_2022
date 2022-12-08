class Solution
  def initialize(input)
    @input = input
  end

  def result_part_one
    day0 = @input.split(",").map(&:to_i)
    day_cycle(day0, 256)
  end

  def day_cycle2(day0, days_left)
    arr = []
    if days_left.zero?
      return day0.length
    end

    day0.each do |days_until_breed|
      if days_until_breed.zero?
        arr << 6
        arr << 8
      else
        arr << (days_until_breed - 1)
      end
    end
    puts "An Tag #{256 - days_left} sind es #{arr.length} Fische."
    day_cycle2(arr, days_left - 1)
  end

  def result_part_two
    day0 = @input.split(",").map(&:to_i)
    day0_hash = day0.tally
    day_cycle(day0_hash, 256)
  end

  def day_cycle(day0, days_left)
    hash = {}
    if days_left.zero?
      return day0.values.sum
    end
    becoming_a_six = day0[0] || 0
    day0.each do |key, value|
      unless key.zero?
        hash[key - 1] = value
      end
    end
    if hash[6]
      hash[6] += becoming_a_six
    else
      hash[6] = becoming_a_six
    end
    hash[8] = becoming_a_six
    day_cycle(hash, days_left - 1)
  end
end

puts "Part 1: #{Solution.new(File.read("inputs/2021/day6.txt")).result_part_two}"
# puts "Part 2: #{Solution.new(File.read("inputs/2021/day6.txt")).result_part_two}"
