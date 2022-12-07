require_relative "../../solutions/2022/day5"

RSpec.describe "Day 5" do
  let(:input_start) do
    <<~TXT
          [D]
      [N] [C]
      [Z] [M] [P]
       1   2   3
    TXT
  end

  let(:input_moves) do
    <<~TXT
      move 1 from 2 to 1
      move 3 from 1 to 3
      move 2 from 2 to 1
      move 1 from 1 to 2
    TXT
  end

  describe "Part One" do
    let(:solution) { Solution.new(input_start, input_moves).result_part_one }

    it "returns the crates on top of each stack, when moving one crate" do
      expect(solution).to eq("CMZ")
    end
  end

  describe "Part Two" do
    let(:solution) { Solution.new(input_start, input_moves).result_part_two }

    it "returns the crates on top of each stack, when moving all crates" do
      expect(solution).to eq("MCD")
    end
  end
end
