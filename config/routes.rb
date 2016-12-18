Rails.application.routes.draw do

	# resources :pokemons

	# get '/pokemons', to: "pokemons#index"

	namespace :api do
		resources :pokemons
	end

end
