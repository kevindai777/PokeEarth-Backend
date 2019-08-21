class Pokemon < ApplicationRecord
  has_many :PokemonLocations
  has_many :PokemonItems
  has_many :locations, through: :PokemonLocations
  has_many :items, through: :PokemonItems
  has_many :users, through: :FavoritePokemons
end
