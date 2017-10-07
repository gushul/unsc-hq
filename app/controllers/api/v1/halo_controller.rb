module Api
  module V1
    class HaloController < ApiController

      def weapons
        render json: Halo.halo5.metadata.weapons.to_json
      end

      def campaign_missions
        render json: Halo.halo5.metadata.campaign_missions.to_json
      end

      def enemies
        render json: Halo.halo5.metadata.enemies.to_json
      end

    end
  end
end

