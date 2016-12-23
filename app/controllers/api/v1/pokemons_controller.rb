class Api::V1::PokemonsController < ApplicationController
  respond_to :json

  def index
  	respond_with Pokemon.all
  end

  def show
    respond_with Pokemon.find(params[:id])
  end
  
end  