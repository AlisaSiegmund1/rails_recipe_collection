class RecipesController < ApplicationController
  def index
    if params[:category_type].blank?
      @recipes = Recipe.all
    else
      @recipes = Recipe.select { |r| r[:category] == params[:category_type]}
    end
    # @recipes = Recipe.all
  end

  def show
    set_recipe
    @ingredient = RecipeIngredient.new
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
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
