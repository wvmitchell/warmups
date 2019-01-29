require './app/snail'

describe "snail" do
  it "should handle a 1 element matrix correctly" do
    # setup
    expected = [1]

    # execution
    result = snail([[1]])

    # expectation
    expect(result).to eq(expected)
  end

  it "should handle a 2 element 1 row matrix correctly" do
    # setup
    expected = [1, 2]

    # execution
    result = snail([[1, 2]])

    # expectation
    expect(result).to eq(expected)
  end

  it "should handle a 2 element 2 row matrix correctly" do
    # setup
    expected = [1, 2]

    # execution
    result = snail([[1], [2]])

    # expectation
    expect(result).to eq(expected)
  end

  it "should handle a 4 element 2 row matrix correctly" do
    # setup
    expected = [1, 2, 4, 3]

    # execution
    result = snail([[1, 2], [3, 4]])

    # expectation
    expect(result).to eq(expected)
  end

  it "should handle a 9 element 3 row matrix correctly" do
    # setup
    expected = [1, 2, 3, 6, 9, 8, 7, 4, 5]

    # execution
    result = snail([[1, 2, 3], [4, 5, 6], [7, 8, 9]])

    # expectation
    expect(result).to eq(expected)
  end

  it "should handle a 16 element 4 row matrix correctly" do
    # setup
    matrix = [
      [1, 2, 3, 4],
      [5, 6, 7, 8],
      [9, 10, 11, 12],
      [13, 14, 15, 16],
    ]
    expected = [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]

    # execution
    result = snail(matrix)

    # expectation
    expect(result).to eq(expected)
  end
end
