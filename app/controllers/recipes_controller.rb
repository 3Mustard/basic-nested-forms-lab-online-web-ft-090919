class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    raise params.inspect
  end
  
  private 
  
  def recipe_params 
    params.require(:recipe).permit(:title, ingredients_attributes: [
      ] )
  end 
end
