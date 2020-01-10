class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  @@all = []
 
  
  def initialize(name)
  @name = name
  @species = "human"
  @@all << self
  @cats = []
  @dogs = []
  end

  def say_species
  "I am a #{@species}."
  end
  def self.all
  @@all
  end 
  def self.count
  self.all.count
  end
  def self.reset_all
  @@all.clear
  end
  def buy_cat(name)
    Cat.new(name, self)
  
  end
  def buy_dog(name)
    Dog.new(name, self)
  end
  def walk_dogs
    Dog.all.each { |dog| dog.mood = "happy" if dog.owner == self }
  end
  def feed_cats
    Cat.all.each { |cat| cat.mood = "happy" if cat.owner == self }
  end
  
def sell_pets
  Dog.all.each do |dog| 
    dog.mood = "nervous" 
    dog.owner = nil
  
 end
    
  Cat.all.each do |cat| 
    cat.mood = "nervous" 
    cat.owner = nil
  end

end
def list_pets
  "I have #{@owner.dogs.count}dog(s), and #{@owner.cats.count} cat(s)."
end
end

# @owner.cats.each do |cat|
#           expect(cat).to be_a(Cat)

