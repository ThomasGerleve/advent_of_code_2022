require_relative "../../solutions/2022/day1"

RSpec.describe "Day 01" do
  let(:input) do
    <<~TXT
      1000
      2000
      3000

      4000

      5000
      6000

      7000
      8000
      9000

      10000
    TXT
  end

  describe "Part One" do
    let(:solution) { Solution.new(input).result_part_one }

    it "checks highest amount of calories carried by an elf" do
      expect(solution).to eq(24_000)
    end
  end

  describe "Part Two" do
    let(:solution) { Solution.new(input).result_part_two }

    it "checks sum of calories of the three elves with the most calories" do
      expect(solution).to eq(45_000)
    end
  end
end
