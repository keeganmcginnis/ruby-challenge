def example_method
  return 'This is an example method'
end

def add_example(a, b)
  return a + b
end

def multiply(a,b)
  return a * b
end

def say_hello
  3.times {puts "hello"}
end

class Dog
  def self.bark
    return ("WOOF!")
  end

  def growl
      return ("grrr")
  end

  NUMBER_OF_LEGS = 4
end

def make_dog
  Dog.new()
end

class Cat
  def initialize(name)
    @name = name
  end

  def name
    return @name
  end

  def noise
    return "meow"
  end

  def legs
    4
  end

  private

  def breathe
     true
  end
end

def add_arrays(a1, a2)
  a1 + a2
end

def subtract_arrays(a1, a2)
  a1 - a2
end

def multiply_array(a1, a2)
  a1 * a2
end

def array_intersection(a1, num)
  a1 & num
end

def say_word(english)
  english.each{|x| puts x}
end

def first_three(array)
  nums = array.first(3)
end

def shout(words)
  puts words.join(" ").upcase + "!"
end

def whisper(soft_words)
  soft_words.join(" ").downcase
end

def add_em_up(ints)
   ints.inject(:+)
end

def reverse_each_word(reverse_words)
  correct_words = []
  reverse_words.each{|x| correct_words.push(x.reverse)}

  return correct_words.join(" ")
end

def reverse_the_sentence(sentence)
  sentence.reverse.join(" ")
end

def sort_alphabetically_ascending(letters)
  letters.sort
end

def sort_alphabetically_descending(letters)
  letters.sort.reverse
end

def make_unique(letters)
  letters.uniq
end

def remove_nils(array)
  array.compact
end

def elements_in(array)
  array.count
end

def evens(numbers)
  numbers.delete_if &:odd?
end

def evens_greater_than_10(numbers)
  numbers.delete_if do |x|
    x < 10 || x.odd?
  end
end
