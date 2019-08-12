class PokemonLocation < ApplicationRecord
  belongs_to :pokemon
  belongs_to :location
end
