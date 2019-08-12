Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :facts
  resources :pokemons
  resources :locations
  resources :items
  resources :regions
  resources :pokemon_locations
  resources :pokemon_items
end
