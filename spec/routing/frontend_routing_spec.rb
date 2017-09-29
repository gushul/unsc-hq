require 'rails_helper'

RSpec.describe FrontendController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/').to route_to('frontend#index')
    end

  end
end
