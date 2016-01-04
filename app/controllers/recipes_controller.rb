class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @category = Category.all
  end

  def create
    recipe = Recipe.create(recipe_params)
    category = params["recipe"]["category"].to_i
    Category.find(category).recipes << recipe
    redirect_to(recipes_path)
  end  

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @category = Category.all
  end

  def update
    recipe = Recipe.find(params[:id])
    category = params["recipe"]["category"].to_i
    Category.find(category).recipes << recipe
    recipe.update(recipe_params)
    redirect_to(recipes_path)
  end  

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to(recipes_path)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :ingredients, :directions, :image, :benefits)
  end  
end  