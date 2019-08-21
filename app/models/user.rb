class User < ApplicationRecord
  has_many :items, through: :FavoriteItems
  has_many :locations, through: :FavoriteLocations
  has_many :pokemons, through: :FavoritePokemons

  validates :username, uniqueness: true
  has_secure_password
end
