require 'challenges'

describe "#example_method" do
  it "returns 'This is an example method'" do
    expect(example_method).to eq('This is an example method')
  end
end

describe "#add_example" do
  it "returns the sum of two numbers" do
    expect(add_example(2,5)).to eq(7)
  end
end
