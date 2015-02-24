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