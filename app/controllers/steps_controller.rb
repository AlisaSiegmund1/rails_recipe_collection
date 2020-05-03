class IngredientsController < ApplicationController
  def new
    raise
    @step = Recipe.find(params[:recipe_id])
    @recipe = Recipe.new
  end

  def create
    @step = Step.new(step_params)
    @step.recipe_id = params["recipe_id"].to_i
    @recipe = Recipe.find(params[:recipe_id])

    # @step.recipe = recipe
   if @step.save
      redirect_to edit_recipe_path(recipe)
    else
      render :new
    end
    # @step.save!
    # redirect_to edit_recipe_path(recipe)
  end

  def update
    @step = Step.find(params[:id])
    @recipe = Recipe.find(params["recipe_id"].to_i)
    @step.update(step_params)
      #@step = Step.new(step_params)
    redirect_to edit_trip_path(@recipe)

  end


  def edit
    # @step = Step.find(params[:recipe_id])
    # @step.destroy
    # redirect_to edit_recipe_path(@step.recipe)
  end

  def destroy
    @step = Step.find(params[:recipe_id])
    @step.destroy
    redirect_to edit_recipe_path(@step.recipe)
  end

  private

  def step_params
    params.require(:step).permit(:content)
  end

end
