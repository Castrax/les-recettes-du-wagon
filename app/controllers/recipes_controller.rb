class RecipesController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized
  respond_to :js, :html, :json

  def index
    if params[:search]
      @recipes = policy_scope(Recipe).order(created_at: :desc).search(params[:search][:query])
      authorize Recipe
    else
      @recipes = policy_scope(Recipe).order(created_at: :desc)
      authorize Recipe
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @dose = Dose.new
    @ingredient = Ingredient.new
    authorize @recipe
  end

  def new
    @recipe = current_user.recipes.new
    authorize @recipe
  end

  def edit
    @recipe = Recipe.find(params[:id])
    authorize @recipe
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)
    authorize @recipe
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    authorize @recipe
    if @recipe.update(recipe_params)
      redirect_to recipes_path
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    authorize @recipe
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :kitchen_type, :difficulty, :cost, :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10, :total_time, :season, :ustensils, photos: [])
  end
end
