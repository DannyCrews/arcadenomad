class LocationsController < ApplicationController
  def index
    # @locations = Location.all
    @locations = Location.paginate(page: params[:page], per_page: 10)
    @count = Location.count
  end

  def show
    @location = Location.friendly.find(params[:id])
  end
end
