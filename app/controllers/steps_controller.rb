class StepsController < ApplicationController
  def new
    @step = Step.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @step = Step.new(step_params)
    # @step.recipe_id = params["recipe_id"].to_i
    @recipe = Recipe.find(params[:recipe_id])
    @step.recipe = @recipe

    if @step.save
      redirect_to new_recipe_step_path(@recipe)
    else
      render :new
    end
    # @step.save!
    # redirect_to edit_recipe_path(recipe)
  end

  def edit
    @recipe = Recipe.find(params["recipe_id"])
    @step = Step.find(params[:id])
  end


  def update
    @step = Step.find(params[:id])
    @recipe = Recipe.find(params["recipe_id"].to_i)
    @step.update(step_params)
    #@step = Step.new(step_params)
    redirect_to new_recipe_step_path(@recipe)

  end


  def destroy
    @step = Step.find(params[:id])
    @recipe = Recipe.find(params["recipe_id"].to_i)
    @step.destroy
    redirect_to new_recipe_step_path(@recipe)
  end

  private

  def step_params
    params.require(:step).permit(:content)
  end
end
