class PokemonLocationSerializer < ActiveModel::Serializer
  attributes :id, :pokemon, :location
end
