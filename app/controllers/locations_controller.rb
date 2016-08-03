class LocationsController < ApplicationController
  def index
    @locations = Location.order('name asc').paginate(page: params[:page], per_page: 10)
  end

  def show
    @location = Location.friendly.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      flash.now[:notice] = 'New location created.'
      redirect_to location_path(@location.id)
    else
      flash.now[:notice] = 'Could not create location .'
      render action: 'new'
    end
  end

  def edit
  end

  def update
  end

  private

  def location_params
    params.require(:location).permit(:name, :description, :street, :city,
     :state_id, :zip, :telephone, :category_id, game_ids: [])
  end
end
