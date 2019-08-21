class FavoritePokemon < ApplicationRecord
  belongs_to :pokemon
  belongs_to :user
end
