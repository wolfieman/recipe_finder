class RecipesController < ApplicationController
  def index
  	@search_term = params[:search] || 'mocha'
    @recipes = Recipe.for(@search_term)
  end
end
