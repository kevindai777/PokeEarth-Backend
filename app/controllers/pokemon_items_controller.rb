class PokemonItemsController < ApplicationController

  def index
    pokemon_items = PokemonItem.all
    render json: pokemon_items
  end

  def show
    pokemon_item = PokemonItem.find(params[:id])
    render json: pokemon_item
  end

end
