class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @count = Location.count
  end

  def show
    @location = Location.find(params[:id])
  end
end
