# class PokemonsController < ApplicationController

# 	def index
# 		@pokemons = Pokemon.all
# 		pokemon_hash = @pokemons.as_json
# 		render json: pokemon_hash
# 	end

# 	def show
# 		@pokemon = Pokemon.find(params[:id])
# 		single_pokemon = @pokemon.as_json
# 		render json: single_pokemon
# 	end

# end