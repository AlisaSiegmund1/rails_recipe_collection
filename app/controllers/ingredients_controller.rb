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
    redirect_to edit_recipe_path(recipe)
  end

  def destroy
    @ingredient = Ingredient.find(params[:recipe_id])
    @ingredient.destroy
    redirect_to edit_recipe_path(@ingredient.recipe)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:description, :dose, :unit)
  end

end
