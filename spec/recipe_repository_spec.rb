require "database_connection"
require "recipe"
require "recipe_repository"

describe RecipeRepository do
  
  before(:each) do
    @korma = Recipe.new("Chicken Korma", 60, 4, 1)
    @fajita = Recipe.new("Fajitas", 25, 2, 2)
    @repo = RecipeRepository.new
  end

  it "#all returns an array containing all recipe instances" do
    expect(@repo.all).to eq [@korma, @fajita]
  end

  it "#find takes id as argument and returns corresponding recipe" do
    expect(@repo.find(1)).to eq @korma
  end

end