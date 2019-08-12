class Item < ApplicationRecord
  has_many :PokemonItems
  has_many :pokemons, through: :PokemonItems
end
