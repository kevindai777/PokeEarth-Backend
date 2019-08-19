class PokemonLocationSerializer < ActiveModel::Serializer
  attributes :id, :pokemon, :location
  def pokemon
    {id: self.object.pokemon.id,
     name: self.object.pokemon.name,
     url: self.object.pokemon.url}
  end
  def location
    {id: self.object.location.id,
     name: self.object.location.name,
     url: self.object.location.url,
     region_id: self.object.location.region_id}
  end
end
