class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    set_recipe
  end

  def new
  end

  def create
  end


  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

end
