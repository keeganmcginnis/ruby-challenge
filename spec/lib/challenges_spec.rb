require 'challenges'

describe "A method named 'example_method'" do
  it "returns 'This is an example method'" do
    expect(example_method).to eq('This is an example method')
  end
end

describe "A method named 'add_example'" do
  it "returns the sum of two numbers" do
    expect(add_example(2,5)).to eq(7)
  end
end

describe "A method named 'multiply'" do
  it "returns the result of multiplying two numbers" do
    expect(multiply(3,4)).to eq(12)
    expect(multiply(-3,4)).to eq(-12)
  end
end

describe "A method named 'say_hello'" do
  it "Uses 'puts' to print three lines of text, all of which are 'hello'" do
    expect{say_hello}.to output("hello\nhello\nhello\n").to_stdout
  end
end

describe "A class named Dog" do
  describe "A method named 'bark'" do
    it "returns the string 'WOOF!'" do
      expect(Dog.bark).to eq('WOOF!')
    end
  end
end
