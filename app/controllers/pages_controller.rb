class PagesController < ApplicationController
  def home
    @recipes = Recipe.first(2)
  end

  def profile
    @user = current_user
    @recipes = current_user.recipes
  end
end
