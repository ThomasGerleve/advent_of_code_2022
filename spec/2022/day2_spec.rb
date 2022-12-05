require_relative "../../solutions/2022/day2"

RSpec.describe "Day 2" do
  let(:input) do
    <<~TXT
      A Y
      B X
      C Z
    TXT
  end

  describe "Part One" do
    let(:solution) { Solution.new(input).result_part_one }

    it "Calculates the correct score" do
      expect(solution).to eq(15)
    end
  end

  describe "Part Two" do
    let(:solution) { Solution.new(input).result_part_two }

    it "calculates the new correct score" do
      expect(solution).to eq(12)
    end
  end
end
