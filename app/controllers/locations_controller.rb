class LocationsController < ApplicationController
  def index
    @locations = locations.all
  end
end
