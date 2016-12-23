class Api::V1::PokemonsController < ApplicationController
  respond_to :json

  # GET request
  # http://localhost:3000/api/v1/pokemons
  def index
  	respond_with Pokemon.all
  end

  # GET request
  # http://localhost:3000/api/v1/pokemons/<id>
  def show
    respond_with Pokemon.find(params[:id])
  end

  # POST request
  # http://localhost:3000/api/v1/pokemons/
  def create
  	pokemon = Pokemon.new(pokemon_params) 

  	if pokemon.save
  		render json: pokemon, status: 201
  	else
  		render json: { errors: pokemon.errors}, status: 422
  	end
  end

  # PUT/PATCH request
  # http://localhost:3000/api/v1/pokemons/<id>
  def update
    pokemon = Pokemon.find(params[:id])

    if pokemon.update(pokemon_params)
      render json: pokemon, status: 200
    else
      render json: { errors: pokemon.errors }, status: 422
    end
  end

  # DELETE request
  # http://localhost:3000/api/v1/pokemons/<id>
  def destroy
    pokemon = Pokemon.find(params[:id])
    pokemon.destroy
    head 204
  end  

  private

  def pokemon_params
  	params.require(:pokemon).permit(:name, :pokemon_type, :moves, :evolves, :evolves_at_level, :evolution) 
  end
  
end  