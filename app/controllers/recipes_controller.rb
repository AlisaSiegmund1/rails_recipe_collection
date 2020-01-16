class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    set_recipe
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end

  def edit
    set_recipe
  end

  def update
    set_recipe
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
  end


  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :category, :photo)
  end

end
