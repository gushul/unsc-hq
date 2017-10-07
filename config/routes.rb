Rails.application.routes.draw do
  root to: 'frontend#index'

  # Api definition
  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      get 'weapons', to: 'halo#weapons'
      get 'campaign-missions', to: 'halo#campaign_missions'
      get 'enemies', to: 'halo#enemies'
    end
  end

  get '/*path', to: 'frontend#index', format: false
end
