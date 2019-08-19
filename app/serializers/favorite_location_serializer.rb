class FavoriteLocationSerializer < ActiveModel::Serializer
  attributes :id, :location, :user
end
