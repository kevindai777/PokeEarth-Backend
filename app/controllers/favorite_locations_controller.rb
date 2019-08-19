class FavoriteLocationsController < ApplicationController

  def index
    favorite_locations = FavoriteLocation.all
    render json: favorite_locations
  end

  def show
    favorite_location = FavoriteLocation.find_by(params[:id])
    render json: favorite_location
  end

  def create
    favorite_location = FavoriteLocation.create(favorite_location_params)
    render json: favorite_location
  end

  def favorite_location_params
    params.require(:favorite_location).permit(:user_id, :location_id)
  end

end
