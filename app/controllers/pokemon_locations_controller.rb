class PokemonLocationsController < ApplicationController

  def index
    pokemon_locations = PokemonLocation.all
    render json: pokemon_locations
  end

  def show
    pokemon_location = PokemonLocation.find(params[:id])
    render json: pokemon_location
  end

  def kanto
    pokemon_locations = PokemonLocation.all.select{|pokemon_location| pokemon_location.location.region_id == 1}
    render json: pokemon_locations
  end

  def johto
    pokemon_locations = PokemonLocation.all.select{|pokemon_location| pokemon_location.location.region_id == 2}
    render json: pokemon_locations
  end

  def hoenn
    pokemon_locations = PokemonLocation.all.select{|pokemon_location| pokemon_location.location.region_id == 3}
    render json: pokemon_locations
  end

  def sinnoh
    pokemon_locations = PokemonLocation.all.select{|pokemon_location| pokemon_location.location.region_id == 4}
    render json: pokemon_locations
  end

  def unova
    pokemon_locations = PokemonLocation.all.select{|pokemon_location| pokemon_location.location.region_id == 5}
    render json: pokemon_locations
  end

  def kalos
    pokemon_locations = PokemonLocation.all.select{|pokemon_location| pokemon_location.location.region_id == 6}
    render json: pokemon_locations
  end

end
