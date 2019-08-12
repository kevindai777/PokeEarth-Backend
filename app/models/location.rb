class Location < ApplicationRecord
  has_many :PokemonLocations
  has_many :pokemons, through: :PokemonLocations
  belongs_to :region
end
