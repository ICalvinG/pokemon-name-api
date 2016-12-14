class PokemonsController < ApplicationController

	def index
		@pokemons = Pokemon.all
		pokemon_hash = @pokemons.as_json
		render json: pokemon_hash
	end

end