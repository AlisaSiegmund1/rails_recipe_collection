class RecipesController < ApplicationController
  def index
    @publishedRecipes = []
    if params[:category_type].blank?
      Recipe.all.each do |recipe|
        @publishedRecipes << recipe if recipe.publish == true
      end
    else
      @recipes = Recipe.select { |r| r[:name] == params[:category_type]}
    end


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
      redirect_to new_recipe_ingredient_path(@recipe)
    else
      render :new
    end
  end

  def edit
    set_recipe
    @ingredient = Ingredient.new
    @step = Step.new
  end

  def update
    set_recipe
    @recipe.update(recipe_params)
    redirect_to new_recipe_ingredient_path(@recipe)
  end

  def destroy
    set_recipe
    @recipe.delete
    redirect_to root_path
  end

  def sweet
    @publishedRecipes = []
    Recipe.all.each do |recipe|
        @publishedRecipes << recipe if recipe.publish == true
      end
    @publishedRecipes = Recipe.where(category: "Süß")
  end

  def savory
    @publishedRecipes = []
    Recipe.all.each do |recipe|
        @publishedRecipes << recipe if recipe.publish == true
      end
    @publishedRecipes = Recipe.where(category: "Herzhaft")
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :category, :photo, :quantity, :serving)
  end

end
