class MovesController < ApplicationController

  def index
    moves = Move.all
    render json: moves
  end

  def show
    move = Move.find(params[:id])
    render json: move
  end
  
end
