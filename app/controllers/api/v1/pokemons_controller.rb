class Api::V1::PokemonsController < ApplicationController
  respond_to :json

  def show
    respond_with Pokemon.find(params[:id])
  end
  
end  