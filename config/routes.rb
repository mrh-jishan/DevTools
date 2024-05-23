Rails.application.routes.draw do
  get 'string_generators/index'

  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :json_validators, :only => [:index, :create]
  resources :jwt_debuggers, :only => [:index]
  resources :reg_exr_testers, :only => [:index]
  resources :string_generators, :only => [:index]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
