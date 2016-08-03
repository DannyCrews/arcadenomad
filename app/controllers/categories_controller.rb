class CategoriesController < ApplicationController

  def index
    @categories = Category.where('locations_count > 0').order('name asc')
  end

  def show
    @category = Category.friendly.find(params[:id])
  end
end
