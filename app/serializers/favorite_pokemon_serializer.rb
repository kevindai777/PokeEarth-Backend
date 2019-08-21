class FavoritePokemonSerializer < ActiveModel::Serializer
  attributes :id, :user, :pokemon
end
