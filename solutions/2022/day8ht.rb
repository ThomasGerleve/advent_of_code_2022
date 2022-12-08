class Solution
  def initialize(input)
    @input = input
  end

  def result_part_one
    tree_rows_arr = @input.lines(chomp: true).map { |row| row.chars.map(&:to_i) }
    tree_columns_arr = tree_rows_arr.clone.transpose
    visible_trees = 0
    tree_rows_arr.each_with_index do |row, y|
      row.each_with_index do |tree, x|
        column = tree_columns_arr[x]
        next visible_trees += 1 if (x == 0) || (y == 0)
        next visible_trees += 1 if (x == row.size - 1) || (y == column.size - 1)
        tree_visible =
          row.slice(0, x).max < tree ||
          row.slice(x + 1, row.size).max < tree ||
          column.slice(0, y).max < tree ||
          column.slice(y + 1, column.size).max < tree

        visible_trees += 1 if tree_visible
      end
    end
    visible_trees
  end

  def result_part_two
  end
end

puts "Part 1: #{Solution.new(File.read("inputs/2022/day8.txt")).result_part_one}"
# puts "Part 2: #{Solution.new(File.read("inputs/2022/day8.txt")).result_part_two}"
