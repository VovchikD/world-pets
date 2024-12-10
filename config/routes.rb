Rails.application.routes.draw do
  devise_for :users
  namespace :profiles do
    resources :users, only: [:show]
  end

  root "main#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
