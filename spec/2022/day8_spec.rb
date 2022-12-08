require_relative "../../solutions/2022/day8ht"

RSpec.describe "Day 8" do
  let(:input) do
    <<~TXT
      30373
      25512
      65332
      33549
      35390
    TXT
  end

  describe "Part One" do
    let(:solution) { Solution.new(input).result_part_one }

    it "counts the visible trees" do
      expect(solution).to eq(21)
    end
  end

  describe "Part Two" do
    let(:solution) { Solution.new(input).result_part_two }

    xit "xx" do
      expect(solution).to eq(xx)
    end
  end
end
