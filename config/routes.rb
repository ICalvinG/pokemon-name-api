Rails.application.routes.draw do

	resources :users
	resources :pokemons

	root 'pokemons#index'

	get '/pokemons', to: "pokemons#index"

end
