require_relative "../../solutions/2022/day4"

RSpec.describe "Day 4" do
  let(:input) do
    <<~TXT
      2-4,6-8
      2-3,4-5
      5-7,7-9
      2-8,3-7
      6-6,4-6
      2-6,4-8
    TXT
  end

  describe "Part One" do
    let(:solution) { Solution.new(input).result_part_one }

    it "checks in how many pairs one range fully contains the other" do
      expect(solution).to eq(2)
    end
  end

  describe "Part Two" do
    let(:solution) { Solution.new(input).result_part_two }

    it "checks in how many pairs the ranges overlap" do
      expect(solution).to eq(4)
    end
  end
end
