class Item < ApplicationRecord
  has_many :PokemonItems
  has_many :pokemons, through: :PokemonItems
  has_many :users, through: :FavoriteItems
end
