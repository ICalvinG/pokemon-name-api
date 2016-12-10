Rails.application.routes.draw do

	resources :users
	resources :pokemons

	root 'pokemons#index'

end
