require_relative "../../solutions/20xx/dayx"

RSpec.describe "Day xx" do
  let(:input) do
    <<~TXT
      xx
    TXT
  end

  describe "Part One" do
    let(:solution) { Solution.new(input).result_part_one }

    it "xx" do
      expect(solution).to eq(xx)
    end
  end

  describe "Part Two" do
    let(:solution) { Solution.new(input).result_part_two }

    xit "xx" do
      expect(solution).to eq(xx)
    end
  end
end
