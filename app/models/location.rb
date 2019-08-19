class Location < ApplicationRecord
  has_many :PokemonLocations
  has_many :pokemons, through: :PokemonLocations
  has_many :users, through: :FavoriteLocations
  belongs_to :region
end
