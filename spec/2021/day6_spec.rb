require_relative "../../solutions/2021/day6ht"

RSpec.describe "Day xx" do
  let(:input) do
    <<~TXT
      3,4,3,1,2
    TXT
  end

  describe "Part One" do
    let(:solution) { Solution.new(input).result_part_one }

    it "returns the total number of lanternfish" do
      expect(solution).to eq(5934)
    end
  end

  describe "Part Two" do
    let(:solution) { Solution.new(input).result_part_two_spec }

    it "returns the total number of lanternfish" do
      expect(solution).to eq(5934)
    end
  end
end
