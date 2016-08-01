class LocationsController < ApplicationController
  def index
    @locations = Location.paginate(:page => params[:page],
      :per_page => params[:per_page])
    @count = Location.count
  end

  def show
    @location = Location.find(params[:id])
  end
end
