class IngredientsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save!
    redirect_to recipe_path(@recipe)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :month)
  end
end
