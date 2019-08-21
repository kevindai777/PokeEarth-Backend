class PokemonsController < ApplicationController

  def index
    pokemons = Pokemon.all
    render json: pokemons
  end

  def show
    pokemon = Pokemon.find(params[:id])
    render json: pokemon
  end

  def kanto
    pokemons = Pokemon.all[0..150]
    render json: pokemons
  end

  def johto
    pokemons = Pokemon.all[151..250]
    render json: pokemons
  end

  def hoenn
    pokemons = Pokemon.all[251..385]
    render json: pokemons
  end

  def sinnoh
    pokemons = Pokemon.all[386..492]
    render json: pokemons
  end

  def unova
    pokemons = Pokemon.all[493..648]
    render json: pokemons
  end

  def kalos
    pokemons = Pokemon.all[649..720]
    render json: pokemons
  end

  def alola
    pokemons = Pokemon.all[721..802]
    render json: pokemons
  end

end
