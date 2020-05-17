class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def profile
    @user = current_user

    # @userRecipes =  Recipe.where("user_id == #{current_user}" )
    #  @userRecipe.each do |recipe|
    #     @userPublishedRecipes << recipe if recipe.publish == true
    #   end

    @userPublishedRecipes = []
    @userUnPublishedRecipes = []


    @user.recipe_ids.each do |recipe_id|
      Recipe.find(recipe_id).publish == true ? @userPublishedRecipes << Recipe.find(recipe_id) : @userUnPublishedRecipes << Recipe.find(recipe_id)
    end
  end

  def collection
    @user = current_user

    @userPublishedRecipes = []
    @userUnPublishedRecipes = []


    @user.recipe_ids.each do |recipe_id|
      Recipe.find(recipe_id).publish == true ? @userPublishedRecipes << Recipe.find(recipe_id) : @userUnPublishedRecipes << Recipe.find(recipe_id)
    end
  end
end
