class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    ingredient = Ingredient.new(ingredient_params)
    recipe = Recipe.find(params[:recipe_id])
    ingredient.recipe = recipe
    ingredient.save!
    redirect_to new_recipe_ingredient_path(recipe)
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @recipe = Recipe.find(params["recipe_id"].to_i)
    @ingredient.destroy
    redirect_to new_recipe_ingredient_path(@ingredient.recipe)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:description, :dose, :unit)
  end

end
