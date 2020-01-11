class RecipesController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  def index
    @recipes = policy_scope(Recipe).order(created_at: :desc)
    authorize Recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
    authorize @recipe
  end

  def new
    @recipe = Recipe.new
    @ingredient = Ingredient.new
    authorize @recipe
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    authorize @recipe
    @recipe.save
    redirect_to recipes_path
  end

  def update
    @recipe = Recipe.find(params[:id])
    authorize @recipe
    @recipe.update(recipe_params)
    redirect_to recipes_path
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    authorize @recipe
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :kitchen_type, :difficulty, :cost, :preparation, :total_time, :season, :ustensils, photos: [])
  end
end
