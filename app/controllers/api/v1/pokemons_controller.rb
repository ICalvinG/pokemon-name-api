class Api::V1::PokemonsController < ApplicationController
  respond_to :json

  def index
  	respond_with Pokemon.all
  end

  def show
    respond_with Pokemon.find(params[:id])
  end

  def create
  	pokemon = Pokemon.new(pokemon_params) 

  	if pokemon.save
  		render json: pokemon, status: 201
  	else
  		render json: { errors: pokemon.errors}, status: 422
  	end
  end

  def update
    pokemon = Pokemon.find(params[:id])

    if pokemon.update(pokemon_params)
      render json: pokemon, status: 200
    else
      render json: { errors: pokemon.errors }, status: 422
    end
  end

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