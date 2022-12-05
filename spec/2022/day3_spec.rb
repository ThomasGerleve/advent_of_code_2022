require_relative "../../solutions/2022/day3"

RSpec.describe "Day 3" do
  let(:input) do
    <<~TXT
      vJrwpWtwJgWrhcsFMMfFFhFp
      jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
      PmmdzqPrVvPwwTWBwg
      wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
      ttgJtRGJQctTZtZT
      CrZsJsPPZsGzwwsLwLmpwMDw
    TXT
  end

  describe "Part One" do
    let(:solution) { Solution.new(input).result_part_one }

    it "Calculates the sum of the priorities" do
      expect(solution).to eq(157)
    end
  end

  describe "Part Two" do
    let(:solution) { Solution.new(input).result_part_two }

    it "Calculates the sum of the badges priorities" do
      expect(solution).to eq(70)
    end
  end
end
