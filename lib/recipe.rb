class Recipe
  attr_accessor :name, :cooking_time, :rating, :id

  def initialize(name = nil, cooking_time = nil, rating = nil, id = nil)
    @name = name ; @cooking_time = cooking_time ; @rating = rating ; @id = id
  end

  def ==(other)
    [@name, @cooking_time, @rating, @id] == [
      other.name, other.cooking_time, other.rating, other.id
    ]
  end
  
end
