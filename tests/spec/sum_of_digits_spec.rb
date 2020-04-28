require "./lib/test_the_past.rb"

$arr = [2, 56, 5, 3, 4, 6, 1, -3456, 123891, 454, 1, 23, 5, 7]

describe TestPast do
  describe "#Sum of parts" do
    # Will take as parameter a list ls and return list of the sums of its parts
    it "first test" do
      actual = TestPast.parts_sums([1, 2, 3, 4, 5, 6])
      expected = [21, 20, 18, 15, 11, 6, 0]

      expect(actual).to eql(expected)
    end
    it "second test" do
      actual = TestPast.parts_sums([0, 1, 3, 6, 10])
      expected = [20, 20, 19, 16, 10, 0]

      expect(actual).to eql(expected)
    end
    it "third test" do
      actual = TestPast.parts_sums([])
      expected = [0]
      expect(actual).to eql(expected)
    end
  end
  describe "#Digital Root" do
    #  Given n, take the sum of the digits of n. If that value has more than one digit,
    #continue reducing in this way until a single-digit number is produced.
    it "first test" do
      actual = TestPast.digital_root(16)
      expected = 7
      expect(actual).to eql(expected)
    end

    it "second test" do
      actual = TestPast.digital_root(942)
      expected = 6
      expect(actual).to eql(expected)
    end

    it "third test" do
      actual = TestPast.digital_root(132189)
      expected = 6
      expect(actual).to eql(expected)
    end
  end
  describe "#Map" do
    #Use block_given? in the #map method above to return the a copy of
    #the provided array when no block is provided.

    it "first test" do
      actual = TestPast.map([1, 2, 3]) { |el| el * 2 }
      expected = [2, 4, 6]
      expect(actual).to eql(expected)
    end

    it "second test" do
      actual = TestPast.map([2, 2, 2])
      expected = [2, 2, 2]
      expect(actual).to eql(expected)
    end

    it "third test" do
      actual = TestPast.map([])
      expected = []
      expect(actual).to eql(expected)
    end
  end
  describe "#Mix and Max" do
    it "Get max element of an array" do
      actual = TestPast.max($arr)
      expected = 123891
      expect(actual).to eql(expected)
    end

    it "Get min element of an array" do
      actual = TestPast.min($arr)
      expected = -3456
      expect(actual).to eql(expected)
    end

    it "Sum max and min elements of an array" do
      max = TestPast.max($arr)
      min = TestPast.min($arr)
      actual = max + min
      expected = 120435
      expect(actual).to eql(expected)
    end
  end

  describe "Classes" do
    it "Calculate the area of a square with side of 4" do
      square = Square.new(4)
      actual = square.area
      expected = 16
      expect(actual).to eql(expected)
    end
    it "Caculate the perimeter of a square with side of 10" do
      square = Square.new(10)
      actual = square.perimeter
      expected = 40
      expect(actual).to eql(expected)
    end
    it "Calculate the sum of the area and perimeter of a square with side of 32" do
      square = Square.new(32)
      actual = square.area + square.perimeter
      expected = 1152
      expect(actual).to eql(expected)
    end
  end
end
