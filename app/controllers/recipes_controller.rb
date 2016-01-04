class RecipesController < ApplicationController

  before_action :load_recipe, except:[:index, :create, :new]

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
  end

  def edit
    @category = Category.all
  end

  def update
    category = params["recipe"]["category"].to_i
    Category.find(category).recipes << recipe
    recipe.update(recipe_params)
    redirect_to(recipes_path)
  end  

  def destroy
    recipe.destroy
    redirect_to(recipes_path)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :ingredients, :directions, :image, :benefits)
  end  

  def load_recipe
    @recipe = Recipe.find(params[:id])
  end

end  