class FavoriteItemSerializer < ActiveModel::Serializer
  attributes :id, :item, :user
end
