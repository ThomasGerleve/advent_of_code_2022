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
    day_cycle(arr, days_left - 1)
  end

  def result_part_two
    day0 = @input.split(",").map(&:to_i)
    day0_hash = day0.tally
    day_cycle(day0_hash, 80)
  end

  def day_cycle(day0, days_left)
    hash = {}
    if days_left.zero?
      return day0.values.sum
    end
    day0.each do |key, value|
      unless key.zero?
        hash[key - 1] = value
      else
        hash[8] = value
        hash[6] = hash[6] ? (hash[6] + value) : value
      end
    end
    p hash
    day_cycle(hash, days_left - 1)
  end
end

# puts "Part 1: #{Solution.new(File.read("inputs/2021/day6.txt")).result_part_one}"
# puts "Part 2: #{Solution.new(File.read("inputs/2021/day6.txt")).result_part_two}"
