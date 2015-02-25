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
  it "should take two arrays as arguments and returns a new array that is a copy of array 1, removing any items that also appear in array 2" do
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

describe "A method named 'array_intersection'" do
  it "should take two arrays as arguments and return a new array containing elements common to the two arrays, excluding any duplicates." do
    a1 = [1,2,3]
    a2 = [3]
    expect(array_intersection(a1, a2)).to match_array([3])
    a1 = [7,8,7,8,9,9,10]
    a2 = [9,10]
    expect(array_intersection(a1, a2)).to match_array([9,10])
  end
end

describe "A method named say_word" do
  it "should take an array of strings as an argument and output a new line containing each word, in order" do
    expect{say_word(['knock knock', "who's there", 'impatient cow', 'impatient cow...', 'MOO!'])}.to output("knock knock\nwho's there\nimpatient cow\nimpatient cow...\nMOO!\n").to_stdout
    expect{say_word(['Hey', 'You', 'Get', 'Outta', 'My', 'Car'])}.to output("Hey\nYou\nGet\nOutta\nMy\nCar\n").to_stdout
  end
end

describe "A method named first_three" do
  it "should return an array containing the first three elements of the array passed" do
    expect(first_three([1,2,3,4])).to contain_exactly(1,2,3)
    expect(first_three(['a','b','c','d','e'])).to contain_exactly('a','b','c')
  end
end

describe "A method named shout" do
  # HINT: http://ruby-doc.org/core-2.2.0/String.html
  it "should concatenate each element of an array of strings and puts them as a single line, all upper case, followed by an exclamation point" do
    expect{shout(['what', 'the', 'french', 'toast', 'are', 'you', 'doing?'])}.to output("WHAT THE FRENCH TOAST ARE YOU DOING?!\n").to_stdout
    expect{shout(['ouch', 'that', 'hurt'])}.to output("OUCH THAT HURT!\n").to_stdout
  end
end

describe "A method named whisper" do
  # HINT: http://ruby-doc.org/core-2.2.0/String.html
  it "should concatenate each element of an array strings and return it as a single string, all lower case" do
    expect(whisper(%w(WHAT THE FRENCH TOAST ARE YOU DOING?))).to eq("what the french toast are you doing?")
    expect(whisper(%w(OUCH THAT HURT))).to eq("ouch that hurt")
  end
end
