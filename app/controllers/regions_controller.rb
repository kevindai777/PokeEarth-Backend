class RegionsController < ApplicationController

  def index
    regions = Region.all
    render json: regions
  end

  def show
    region = Region.find(params[:id])
    render json: region
  end

end
