module Flight
  def fly
    puts "I'm a #{self.class}, I'm flying!"
  end
end

class Animal
  attr_reader :num_legs
end

class Mammal<Animal
  def warm_blooded?
    true
  end
end

class Amphibian<Animal
  def warm_blooded?
    false
  end
end

class Primate<Mammal
  def initialize
    @num_legs = 2
  end
end

class Frog<Amphibian
end

class Bat<Mammal
  include Flight
end

class Bird<Animal
  include Flight
  def warm_blooded?
    true
  end
end

class Parrot<Bird
end

class Chimpanzee<Primate
end

chimp = Chimpanzee.new
puts chimp.num_legs
jumpy = Frog.new
puts jumpy.warm_blooded?
puts chimp.class
perry = Parrot.new
perry.fly
batty = Bat.new
batty.fly
jacky = Bird.new
jacky.fly