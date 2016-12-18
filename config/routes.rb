Rails.application.routes.draw do

	# resources :pokemons

	get 'api/pokemons', to: "api/pokemons#index"

	namespace :api do
		resources :pokemons
	end

end
