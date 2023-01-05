require_relative "database_connection.rb"
require_relative "recipe.rb"

class RecipeRepository

  def all
    query = "SELECT * FROM recipes"
    hashes = DatabaseConnection.exec_params(query, [])
    arr = hashes.map { |hash| convert_to_recipe(hash) }
    arr
  end

  def find(id)
    query = "SELECT * FROM recipes WHERE id = $1"
    convert_to_recipe(DatabaseConnection.exec_params(query, [id])[0])
  end

  private

  def convert_to_recipe(record)
    recipe = Recipe.new
    recipe.name = record["name"]
    recipe.cooking_time = record["cooking_time"].to_i
    recipe.rating = record["rating"].to_i
    recipe.id = record["id"].to_i
    recipe
  end
end