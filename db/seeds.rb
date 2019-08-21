# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'net/http'
require 'JSON'
require 'byebug'

Type.create(name: 'fire', weak_to: ['ground', 'rock', 'water'], immune_to: [], resists: ['bug','fairy','fire','grass','ice','steel'], weak_against: ['dragon','fire','rock','water'], strong_against: ['bug','grass','ice','steel'])

# Fact.delete_all
# Pokemon.delete_all
# Location.delete_all
# Region.delete_all
# PokemonLocation.delete_all
# PokemonItem.delete_all
#
# move_url = "https://pokeapi.co/api/v2/move/?limit=746"
# move_uri = URI(move_url)
# move_response = Net::HTTP.get(move_uri)
# move_parsed = JSON.parse(move_response)
# move_parsed['results'].each do |move|
#   move_type_url = move['url']
#   move_type_uri = URI(move_type_url)
#   move_type_response = Net::HTTP.get(move_type_uri)
#   move_type_parsed = JSON.parse(move_type_response)
#   Move.create(name: move['name'], url: move['url'], typing: move_type_parsed['type']['name'])
# end
#
# fact1 = Fact.create(description: "Did you know that in Pokemon Ruby and Sapphire, there were only 6 tiles in a pond to catch a Feebas?")
# fact2 = Fact.create(description: "Did you know that the three dogs in Gold, Silver, and Crystal are notorious to catch for their ability to escape?")
#
# url = "https://pokeapi.co/api/v2/pokemon/?limit=964"
# uri = URI(url)
# response = Net::HTTP.get(uri)
# parsed = JSON.parse(response)
# parsed['results'].each do |pokemon|
#   Pokemon.create(name: pokemon['name'], url: pokemon['url'])
# end
#
# region_url = "https://pokeapi.co/api/v2/region/?limit=7"
# region_uri = URI(region_url)
# region_response = Net::HTTP.get(region_uri)
# region_parsed = JSON.parse(region_response)
# region_parsed['results'].each do |region|
#   Region.create(name: region['name'], url: region['url'])
# end
#
# kanto_url = "https://pokeapi.co/api/v2/region/1/"
# kanto_uri = URI(kanto_url)
# kanto_response = Net::HTTP.get(kanto_uri)
# kanto_parsed = JSON.parse(kanto_response)
# kanto_parsed['locations'].each do |kanto|
#   Location.create(name: kanto['name'], url: kanto['url'], region_id: 1)
# end
#
# johto_url = "https://pokeapi.co/api/v2/region/2/"
# johto_uri = URI(johto_url)
# johto_response = Net::HTTP.get(johto_uri)
# johto_parsed = JSON.parse(johto_response)
# johto_parsed['locations'].each do |johto|
#   Location.create(name: johto['name'], url: johto['url'], region_id: 2)
# end
#
# hoenn_url = "https://pokeapi.co/api/v2/region/3/"
# hoenn_uri = URI(hoenn_url)
# hoenn_response = Net::HTTP.get(hoenn_uri)
# hoenn_parsed = JSON.parse(hoenn_response)
# hoenn_parsed['locations'].each do |hoenn|
#   Location.create(name: hoenn['name'], url: hoenn['url'], region_id: 3)
# end
#
# sinnoh_url = "https://pokeapi.co/api/v2/region/4/"
# sinnoh_uri = URI(sinnoh_url)
# sinnoh_response = Net::HTTP.get(sinnoh_uri)
# sinnoh_parsed = JSON.parse(sinnoh_response)
# sinnoh_parsed['locations'].each do |sinnoh|
#   Location.create(name: sinnoh['name'], url: sinnoh['url'], region_id: 4)
# end
#
# unova_url = "https://pokeapi.co/api/v2/region/5/"
# unova_uri = URI(unova_url)
# unova_response = Net::HTTP.get(unova_uri)
# unova_parsed = JSON.parse(unova_response)
# unova_parsed['locations'].each do |unova|
#   Location.create(name: unova['name'], url: unova['url'], region_id: 5)
# end
#
# kalos_url = "https://pokeapi.co/api/v2/region/6/"
# kalos_uri = URI(kalos_url)
# kalos_response = Net::HTTP.get(kalos_uri)
# kalos_parsed = JSON.parse(kalos_response)
# kalos_parsed['locations'].each do |kalos|
#   Location.create(name: kalos['name'], url: kalos['url'], region_id: 6)
# end
#
# alola_url = "https://pokeapi.co/api/v2/region/7/"
# alola_uri = URI(alola_url)
# alola_response = Net::HTTP.get(alola_uri)
# alola_parsed = JSON.parse(alola_response)
# alola_parsed['locations'].each do |alola|
#   Location.create(name: alola['name'], url: alola['url'], region_id: 7)
# end
#
# item_url = "https://pokeapi.co/api/v2/item/?limit=954"
# item_uri = URI(item_url)
# item_response = Net::HTTP.get(item_uri)
# item_parsed = JSON.parse(item_response)
# item_parsed['results'].each do |item|
#   Item.create(name: item['name'], url: item['url'])
# end
#
# location_area_url = "https://pokeapi.co/api/v2/location-area/?limit=651"
# location_area_uri = URI(location_area_url)
# location_area_response = Net::HTTP.get(location_area_uri)
# location_area_parsed = JSON.parse(location_area_response)
# location_area_parsed['results'].each do |location|
#   new_name = location['name']
#   new_location = Location.all.find{|location| new_name.include?(location['name'])}
#   Location.create(name: location['name'], url: location['url'], region_id: new_location['region_id'])
# end
#
# #Creating PokemonLocations
# Pokemon.all.each do |pokemon|
#   url = pokemon['url']
#   uri = URI(url)
#   response = Net::HTTP.get(uri)
#   parsed = JSON.parse(response)
#   encounters_url = parsed['location_area_encounters']
#
#   encounters_uri = URI(encounters_url)
#   encounters_response = Net::HTTP.get(encounters_uri)
#   encounters_parsed = JSON.parse(encounters_response)
#
#   if !(encounters_parsed).empty?
#     encounters_parsed.each do |encounter|
#       found_location = Location.all.find{|location| location['name'] == encounter['location_area']['name']}
#       if found_location == nil
#         found_location_id = nil
#       else
#         found_location_id = found_location['id']
#       end
#       PokemonLocation.create(pokemon_id: pokemon['id'], location_id: found_location_id)
#     end
#   end
# end
#
# #Creating PokemonItems
# Pokemon.all.each do |pokemon|
#   url = pokemon['url']
#   uri = URI(url)
#   response = Net::HTTP.get(uri)
#   parsed = JSON.parse(response)
#   items_array = parsed['held_items']
#
#   if !(items_array).empty?
#     items_array.each do |item|
#       found_item = Item.all.find{|this_item| this_item['name'] == item['item']['name']}
#       found_item_id = found_item['id']
#       PokemonItem.create(pokemon_id: pokemon['id'], item_id: found_item_id)
#     end
#   end
# end
