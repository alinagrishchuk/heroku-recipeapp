class RecipesController < ApplicationController
  def index
    @search = params[:search] || 'chocolate'
    @recipes = Recipe.for(@search)
  end

  def show
    @search_id = params[:id] #||"47024"#
    @recipe = Recipe.get_recipe(@search_id)
  end
end
