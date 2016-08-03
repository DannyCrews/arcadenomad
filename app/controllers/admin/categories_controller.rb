class Admin::CategoriesController < ApplicationController
  before_filter :authenticate

  layout 'admin'

  def index
    @categories = Category.order('name asc')
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      flash[:notice] = 'Category successfully updated.'
      redirect_to edit_admin_category_path(@category.id)
    else
      render 'edit'
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
