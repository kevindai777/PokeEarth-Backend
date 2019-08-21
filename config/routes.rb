Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pokemon_locations/kanto", to: "pokemon_locations#kanto"
  get "/pokemon_locations/johto", to: "pokemon_locations#johto"
  get "/pokemon_locations/hoenn", to: "pokemon_locations#hoenn"
  get "/pokemon_locations/sinnoh", to: "pokemon_locations#sinnoh"
  get "/pokemon_locations/unova", to: "pokemon_locations#unova"
  get "/pokemon_locations/kalos", to: "pokemon_locations#kalos"

  get "/pokemons/kanto", to: "pokemons#kanto"
  get "/pokemons/johto", to: "pokemons#johto"
  get "/pokemons/hoenn", to: "pokemons#hoenn"
  get "/pokemons/sinnoh", to: "pokemons#sinnoh"
  get "/pokemons/unova", to: "pokemons#unova"
  get "/pokemons/kalos", to: "pokemons#kalos"
  get "/pokemons/alola", to: "pokemons#alola"

  resources :facts
  resources :pokemons
  resources :locations
  resources :items
  resources :regions
  resources :pokemon_locations
  resources :pokemon_items
  resources :users
  resources :favorite_locations
  resources :favorite_items
  resources :moves
  resources :favorite_pokemons
  resources :types

  get "/auto_login", to: "auth#auto_login"
  post "/signup", to: "users#create"
  post "/login", to: "auth#login"

end
