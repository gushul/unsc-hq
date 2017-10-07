require 'rails_helper'

RSpec.describe 'Api', type: :request do
  describe 'Weapons' do
    it 'List all weapons' do
      get api_v1_weapons_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'Campaign Missions' do
    it 'List all missions' do
      get api_v1_campaign_missions_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'Enemies' do
    it 'List all enemies' do
      get api_v1_enemies_path
      expect(response).to have_http_status(:ok)
    end
  end
end
