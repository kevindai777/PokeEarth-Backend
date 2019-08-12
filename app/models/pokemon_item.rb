class PokemonItem < ApplicationRecord
  belongs_to :pokemon
  belongs_to :item
end
