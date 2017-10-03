module Api
  module V1
    class HaloController < ApiController

      def weapons
        render json: Halo.halo5.metadata.weapons.to_json
      end

    end
  end
end

