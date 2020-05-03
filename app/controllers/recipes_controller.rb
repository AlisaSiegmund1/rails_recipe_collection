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

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
    set_recipe
    @ingredient = Ingredient.new
  end

  def update
    set_recipe
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    set_recipe
    @recipe.delete
    redirect_to root_path
  end

  def sweet
    @recipes = Recipe.where(category: "Süß")
  end

  def savory
    @recipes = Recipe.where(category: "Herzhaft")
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :category, :photo, :quantity, :serving)
  end

end
