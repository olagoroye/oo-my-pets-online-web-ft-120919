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
    Cat.name.count {|cat| cat.name == self}
  
  end
end

# @owner.cats.each do |cat|
#           expect(cat).to be_a(Cat)

