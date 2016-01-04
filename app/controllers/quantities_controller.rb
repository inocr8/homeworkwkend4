class QuantitiesController < ApplicationController

  before_action :load_quantity, except:[:index, :create, :new]

  def index
    @quantities = Quantity.all
  end

  def new
    @quantity = Quantity.new
    @ingredients = Ingredient.all
    @recipes = Recipe.all
  end

  def create
    Quantity.create(quantity_params)
    redirect_to(quantities_path)
  end

  def show
  end

  def edit
  end

  def update
    quantity.update(quantity_params)
    redirect_to(quantities_path)
  end

  def destroy
    quantity.destroy
    redirect_to(quantities_path)
  end

  private
  def quantity_params
    params.require(:quantity).permit(:ingredient_id, :recipe_id, :amount)
  end

  def load_quantity
    @quantity = Quantity.find(params[:id])
  end

end