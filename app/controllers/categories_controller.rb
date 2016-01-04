class CategoriesController < ApplicationController

  before_action :load_category, except:[:index, :create, :new]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    Category.create(category_params)
    redirect_to(categories_path)
  end

  def show
  end

  def edit
  end

  def update
    category.update(category_params)
    redirect_to(categories_path)
  end

  def destroy
    category.destroy
    redirect_to(categories_path)
  end

  private
  def category_params
    params.require(:category).permit(:name, :colour, :image)
  end

  def load_category
    @category = Category.find(params[:id])
  end

end