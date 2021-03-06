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
  it "should concatenate each element of an array strings and returns it as a single string, all lower case" do
    expect(whisper(%w(WHAT THE FRENCH TOAST ARE YOU DOING?))).to eq("what the french toast are you doing?")
    expect(whisper(%w(OUCH THAT HURT))).to eq("ouch that hurt")
  end
end

describe "A method named add_em_up" do
  it "should add together all of the elements of an array" do
    expect(add_em_up([1,2,3,4,5])).to eq(15)
  end
end

describe "A method named reverse_each_word" do
  it "should return the elements of an array as a single string with each word spelled backwards, in the original order" do
    expect(reverse_each_word(%w(may the force be with you))).to eq('yam eht ecrof eb htiw uoy')
  end
end

describe "A method named reverse_the_sentence" do
  it "should accept a string as an argument and return the string with the words in reverse order" do
    expect(reverse_the_sentence(%w(may the force be with you))).to eq('you with be force the may')
    expect(reverse_the_sentence(%w(i like catz))).to eq('catz like i')
  end
end

describe "A method named sort_alphabetically_ascending" do
  it "should return an array sorted alphabetically ascending" do
    expect(sort_alphabetically_ascending(%w(f e b c a d))).to eq(%w(a b c d e f))
    expect(sort_alphabetically_ascending(%w(z a y b))).to eq(%w(a b y z))
  end
end


describe "A method named sort_alphabetically_descending" do
  it "should return an array sorted alphabetically descending" do
    expect(sort_alphabetically_descending(%w(f e b c a d))).to eq(%w(f e d c b a))
    expect(sort_alphabetically_descending(%w(x y z))).to eq(%w(z y x))
  end
end

describe "A method named make_unique" do
  it "should return an array with duplicate elements removed" do
    expect(make_unique(%w(a a b b c c))).to eq(%w(a b c))
    expect(make_unique(%w(x y x y z))).to eq(%w(x y z))
  end
end

describe "A method named remove_nils" do
  it "should return an array with nil values removed" do
    expect(remove_nils(['a', nil, 'b', nil, 'c'])).to match_array(%w(a b c))
    expect(remove_nils(['x', nil, nil, 'y', nil, nil, 'z'])).to match_array(%w(z x y))
  end
end

describe "A method named elements_in" do
  it "should return the number of elememts in an array" do
    expect(elements_in(%w(a b c d))).to eq(4)
    expect(elements_in(%w(1 2 3 4 5 6))).to eq(6)
  end
end

describe "A method named evens" do
  it "returns an array with odd numbers removed" do
    expect(evens([1,2,3,4,5,6,7])).to match_array([2,4,6])
    expect(evens([9,8,7,6,5,4])).to match_array([4,6,8])
  end
end


describe "A method named evens_greater_than_10" do
  it "returns an array with odd numbers and numbers less than 10 removed" do
    expect(evens_greater_than_10([1,2,3,10,11,12,13])).to match_array([10,12])
    expect(evens_greater_than_10([7,8,9,13,15,18])).to match_array([18])
  end
end
