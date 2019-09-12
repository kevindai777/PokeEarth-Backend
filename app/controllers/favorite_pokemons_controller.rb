class FavoritePokemonsController < ApplicationController

  def index
    favorite_pokemons = FavoritePokemon.all
    render json: favorite_pokemons
  end

  def show
    favorite_pokemon = FavoritePokemon.find_by(params[:id])
    render json: favorite_pokemon
  end

  def create
    favorite_pokemon = FavoritePokemon.create(favorite_pokemon_params)
    render json: favorite_pokemon
  end

  def destroy
    favorite_pokemon = FavoritePokemon.find(params[:id])
    favorite_pokemon.delete
  end

  def favorite_pokemon_params
    params.require(:favorite_pokemon).permit(:user_id, :pokemon_id)
  end

end
