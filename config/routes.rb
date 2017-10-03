Rails.application.routes.draw do
  root to: 'frontend#index'

  # Api definition
  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      get 'weapons', to: 'halo#weapons'
    end
  end

  get '/*path', to: 'frontend#index', format: false
end
