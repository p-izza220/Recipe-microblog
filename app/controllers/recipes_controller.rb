class RecipesController < ApplicationController
  def index
  	@recipes = Recipe.all.order(:created_at => :desc)
  	if params[:search]
  	  @recipes = Recipe.search(params[:search]).order("created_at DESC")
  	else
  	  @recipes = Recipe.all.order("created_at DESC")
  	end
  end

  def new
  	@recipe = Recipe.new
  end

  def create
  	@recipe = Recipe.new(recipe_params)
  	@recipe.user_id = session[:user_id]
  	if @recipe.save
  		redirect_to recipes_path
    else
      p @recipe
      redirect_to recipes_new_path
  	end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  def recipe_params
    params.require(:recipe).permit(:recipe_title, :avatar, :ingredients, :directions)
  end
end
