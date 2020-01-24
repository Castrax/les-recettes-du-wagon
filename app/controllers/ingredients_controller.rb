class IngredientsController < ApplicationController
  skip_after_action :verify_authorized
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save!
      redirect_to recipe_path
    else
      render :create
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
