class FavoriteItemsController < ApplicationController

  def index
    favorite_items = FavoriteItem.all
    render json: favorite_items
  end

  def show
    favorite_item = FavoriteItem.find(params[:id])
    render json: favorite_item
  end

  def create
    favorite_item = FavoriteItem.create(favorite_item_params)
    render json: favorite_item
  end

  def favorite_item_params
    params.require(:favorite_item).permit(:user_id, :item_id)
  end

end
