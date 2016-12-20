Rails.application.routes.draw do

	# resources :pokemons

	# get 'api/pokemons', to: "api/pokemons#index"

	namespace :api do 
	    namespace :v1 do 
	        resources :pokemons
	    end 
	end 

end
