module Api
	class PokemonsController < Api::BaseController
    

    private

      def pokemon_params
        params.require(:pokemon).permit(:name)
      end

      def query_params
        params.permit(:name)
      end

  end
end  