class DosesController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @recipe = Recipe.find(params[:recipe_id])
    @dose.recipe = @recipe
    if @dose.save!
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @dose = Dose.find(params[:recipe_id])
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @dose = Dose.find(params[:id])
    @dose.save!(dose_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @dose = Dose.find(params[:recipe_id])
    @dose.destroy!
    redirect_to recipe_path(@recipe)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :recipe_id)
  end
end
