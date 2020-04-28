require "./lib/sum_parts"

describe SumParts do
  describe "#Will take as parameter a list ls and return list of the sums of its parts" do
    it "first test" do
      actual = SumParts.parts_sums([1, 2, 3, 4, 5, 6])
      expected = [21, 20, 18, 15, 11, 6, 0]

      expect(actual).to eql(expected)
    end
    it "second test" do
      actual = SumParts.parts_sums([0, 1, 3, 6, 10])
      expected = [20, 20, 19, 16, 10, 0]

      expect(actual).to eql(expected)
    end
    it "third test" do
      actual = SumParts.parts_sums([])
      expected = [0]
      expect(actual).to eql(expected)
    end
  end
end
