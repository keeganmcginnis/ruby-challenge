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
  describe "A class method named 'bark'" do
    it "returns the string 'WOOF!'" do
      expect(Dog.bark).to eq('WOOF!')
    end
  end

  describe "An instance method named 'growl'" do
    it "returns the string 'grrr'" do
      expect(Dog.new.growl).to eq('grrr')
    end
  end

  describe "An class constant named NUMBER_OF_LEGS" do
    it "equals 4" do
      expect(Dog::NUMBER_OF_LEGS).to eq(4)
    end
  end

end

describe "A method named 'make_dog'" do
  it "returns a new instance of Dog" do
    dog = make_dog
    expect(dog.class).to eq(Dog)
    expect(dog.growl).to eq('grrr')
  end
end

describe "A class named Cat" do
  it "is initialized by passing a 'name' argument that can be accessed through an instance method named 'name', which returns an instance variable named 'name'" do
    expect(Cat.new('Duffy').name).to eq('Duffy')
    expect(Cat.new('Baby').name).to eq('Baby')
  end

  it "Should be able to meow" do
    expect(Cat.new('Floyd').noise).to eq('meow')
  end

  it "Should have four legs." do
    expect(Cat.new('Floyd').legs).to eq(4)
  end

  it "Should have a private method called 'breathe'" do
    expect{Cat.new('Floyd').breathe}.to raise_error(NoMethodError)
  end
end

describe "A method named 'add_arrays'" do
  # HINT: http://ruby-doc.org/core-2.2.0/Array.html
  it "should take two arrays as arguments and combine them into one array" do
    array_one = [1,2,3,4,5]
    array_two = [1,2,3]
    expect(add_arrays(array_one, array_two)).to match_array([1,1,2,2,3,3,4,5])
    array_one = [7,8]
    array_two = [7,9,10]
    expect(add_arrays(array_one, array_two)).to match_array([7,7,8,9,10])
  end
end

describe "A method named 'subtract_arrays" do
  it "should take an array and a number as arguments and create a new array built by concatenating <number> copies of the array" do
    a1 = [1,2,3]
    a2 = [2,3]
    expect(subtract_arrays(a1, a2)).to match_array([1])
    a1 = [1,2,3]
    a2 = [3]
    expect(subtract_arrays(a1, a2)).to match_array([1,2])
  end
end

describe "A method named 'multiply_array'" do
  it "should take an array and a number as arguments and create a new array built by concatenating <number> copies of the array" do
    array = [1,2,3]
    expect(multiply_array(array, 3)).to match_array([1,2,3,1,2,3,1,2,3])
    array = [7,8]
    expect(multiply_array(array, 4)).to match_array([7,8,7,8,7,8,7,8])
  end
end

