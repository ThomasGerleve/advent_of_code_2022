require_relative "../../solutions/2022/day6"

RSpec.describe "Day 8" do
  let(:input) do
    <<~TXT
      mjqjpqmgbljsphdztnvjfqwrcgsmlb
    TXT
  end

  describe "Part One" do
    let(:solution) { Solution.new(input).result_part_one }

    it "checks how many characters need to be processed" do
      expect(solution).to eq(7)
    end
  end

  describe "Part Two" do
    let(:solution) { Solution.new(input).result_part_two }

    it "checks how many characters need to be processed" do
      expect(solution).to eq(19)
    end
  end
end
