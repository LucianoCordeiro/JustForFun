class Cat 
  
  attr_accessor :id, :name, :age
  
  def initialize(id = nil, name = nil, age = nil)
    @id = id
    @name = name
    @age = age
  end
  
  @cats = []
  
  def self.create(name, age)
    @cats << new(@cats.size + 1, name, age)
  end
  
  def self.find(cat_id)
    @cats[cat_id - 1]
  end
  
  def self.count 
    @cats.size
  end
  
  def self.all 
    @cats
  end

end

Cat.create("Neto", 13)
Cat.create("Mario", 6)
Cat.create("Gabriel", 16)
Cat.create("Anderson", 7)

Cat.count # => 4
Cat.find(3) # =>  #<Cat:0x0055a34d04a538 @id=3, @name="Gabriel", @age=16>
