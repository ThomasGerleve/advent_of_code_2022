class Solution
  def initialize(input_start, input_moves)
    @input_start = input_start
    @input_moves = input_moves
  end

  def get_stacks_index_positions(lines_arr)
    stacks_index_positions = {}
    lines_arr.pop.each_with_index do |char, i|
      next if char.to_i == 0

      stack_number = char.to_i
      stacks_index_positions[stack_number] = i
    end
    stacks_index_positions
  end

  def codify_starting_position(lines_arr, stacks_index_positions)
    stacks = {}
    lines_arr.reverse.map do |line|
      line.each_with_index do |char, i|
        stack_number = stacks_index_positions.key(i)
        add_crate_to_top_of_stack(char, stacks, stack_number) if i == stacks_index_positions[stack_number]
      end
    end
    stacks
  end

  def add_crate_to_top_of_stack(char, stacks, stack_number)
    return if char == " "
    if stacks[stack_number].nil?
      stacks[stack_number] = [char]
    else
      stacks[stack_number].push(char)
    end
  end

  def prepare_move_input
    moves = @input_moves.lines.map { |line| line.scan(/\d/).map(&:to_i) }
    moves.map do |move|
      next move unless move.length == 4
      double_digit = move.take(2).join.to_i
      move.drop(2).prepend(double_digit)
    end
  end

  def move_crates_one_by_one(starting_position, moves_arr)
    moves_arr.map do |move|
      move.first.times do
        remove_and_add_crate(starting_position, move[1], move[2])
      end
    end
    starting_position
  end

  def remove_and_add_crate(starting_position, from_stack, to_stack)
    crate = starting_position[from_stack].pop
    starting_position[to_stack].push(crate)
  end

  def result_part_one
    lines_arr = @input_start.lines.map(&:chars)
    moves_arr = prepare_move_input
    stacks_index_positions = get_stacks_index_positions(lines_arr)
    starting_position = codify_starting_position(lines_arr, stacks_index_positions)
    end_position = move_crates_one_by_one(starting_position, moves_arr)
    end_position.values.map(&:last).join
  end

  def move_all_crates(starting_position, moves_arr)
    moves_arr.map do |move|
      remove_and_add_crates(starting_position, move)
    end
    starting_position
  end

  def remove_and_add_crates(starting_position, move)
    crates = starting_position[move[1]].pop(move[0])
    starting_position[move[2]].push(crates).flatten!
  end

  def result_part_two
    lines_arr = @input_start.lines.map(&:chars)
    moves_arr = prepare_move_input
    stacks_index_positions = get_stacks_index_positions(lines_arr)
    starting_position = codify_starting_position(lines_arr, stacks_index_positions)
    end_position = move_all_crates(starting_position, moves_arr)
    end_position.values.map(&:last).join
  end
end

puts "Part 1: #{Solution.new(File.read("inputs/2022/day5_start.txt"), File.read("inputs/2022/day5_moves.txt")).result_part_one}"
puts "Part 2: #{Solution.new(File.read("inputs/2022/day5_start.txt"), File.read("inputs/2022/day5_moves.txt")).result_part_two}"
