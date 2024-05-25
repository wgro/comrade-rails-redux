Rails.application.routes.draw do
  resources :language_services
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Solid queue monitoring
  mount MissionControl::Jobs::Engine, at: "/jobs"

  # Debugbar
  if defined? Debugbar
    mount Debugbar::Engine => Debugbar.config.prefix
  end

  # Defines the root path route ("/")
  root "static#index"

  # Language services
  defaults export: true do
    resources :language_services
  end
end
