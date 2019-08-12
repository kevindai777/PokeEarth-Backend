class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :locations
end
