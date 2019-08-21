class TypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :weak_to, :immune_to, :resists, :weak_against, :strong_against
end
