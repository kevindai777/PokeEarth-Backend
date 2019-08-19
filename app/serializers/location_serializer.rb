class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :region_id
end
