class Solution
  def initialize(input)
    @input = input
  end

  def result_part_one
    pairs = @input.lines.map { |line| line.strip.split(",") }
    count = 0
    pairs.map do |pair|
      first_elf_start = pair.first.split("-").map(&:to_i).first
      first_elf_end = pair.first.split("-").map(&:to_i).last
      second_elf_start = pair.last.split("-").map(&:to_i).first
      second_elf_end = pair.last.split("-").map(&:to_i).last
      first_set = (first_elf_start..first_elf_end).to_set
      second_set = (second_elf_start..second_elf_end).to_set
      count += 1 if (first_set - second_set).to_a == [] || (second_set - first_set).to_a == []
    end
    count
  end

  def result_part_two
    pairs = @input.lines.map { |line| line.strip.split(",") }
    count = 0
    pairs.map do |pair|
      first_elf_start = pair.first.split("-").map(&:to_i).first
      first_elf_end = pair.first.split("-").map(&:to_i).last
      second_elf_start = pair.last.split("-").map(&:to_i).first
      second_elf_end = pair.last.split("-").map(&:to_i).last
      first_set = (first_elf_start..first_elf_end).to_set
      second_set = (second_elf_start..second_elf_end).to_set
      count += 1 unless (first_set & second_set).to_a.empty?
    end
    count
  end
end

puts "Part 1: #{Solution.new(File.read("inputs/2022/day4.txt")).result_part_one}"
puts "Part 2: #{Solution.new(File.read("inputs/2022/day4.txt")).result_part_two}"
