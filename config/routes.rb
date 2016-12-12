Rails.application.routes.draw do

	resources :pokemons

	get '/pokemons', to: "pokemons#index"

end
