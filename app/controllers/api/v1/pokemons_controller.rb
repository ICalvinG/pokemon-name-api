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
  		render json: user, status: 201
  	else
  		render json: { errors: user.errors}, status: 422
  	end
  end

  private

  def pokemon_params
  	params.require(:pokemon).permit(:name, :pokemon_type, :moves, :evolves, :evolves_at_level, :evolution) 
  end
  
end  