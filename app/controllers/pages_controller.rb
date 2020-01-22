class PagesController < ApplicationController
  def home
    @recipes = Recipe.first(2)
  end
end
