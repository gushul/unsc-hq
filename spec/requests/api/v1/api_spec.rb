require 'rails_helper'

RSpec.describe 'Api', type: :request do
  describe 'Weapons' do
    it 'List all weapons' do
      get api_v1_weapons_path
      expect(response).to have_http_status(:ok)
    end
  end
end
