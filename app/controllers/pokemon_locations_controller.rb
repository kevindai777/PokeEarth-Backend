class PokemonLocationsController < ApplicationController

  def index
    pokemon_locations = PokemonLocation.all
    render json: pokemon_locations
  end

  def show
    pokemon_location = PokemonLocation.find(params[:id])
    render json: pokemon_location
  end

end
