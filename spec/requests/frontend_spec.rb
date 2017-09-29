require 'rails_helper'

RSpec.describe 'Frontend', type: :request do
  describe 'Home' do
    it 'Home page status' do
      get root_path
      expect(response).to have_http_status(:ok)
    end
  end
end
