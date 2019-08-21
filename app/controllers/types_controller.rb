class TypesController < ApplicationController

  def index
    types = Type.all
    render json: types
  end

  def show
    type = Type.find_by(params[:id])
    render json: type
  end

  def create
    type = type.create(type_params)
    render json: type
  end

  def type_params
    params.require(:type).permit(:name, :weak_to, :immune_to, :resists, :weak_against, :strong_against)
  end

end
