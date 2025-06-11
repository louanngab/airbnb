Rails.application.routes.draw do
  namespace :host do
    get "flats/new"
    get "flats/create"
  end
  root "pages#home"

  get "pages/home"
  get "pages/cabane", to: "pages#cabane"
  get "pages/experiences", to: "pages#experiences"
  get "pages/services", to: "pages#services"
  # get "pages/flats", to: "pages#flats"
  devise_for :users

    # Healthcheck Rails
  get "up" => "rails/health#show", as: :rails_health_check

  # (PWA - désactivé pour l’instant)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  resources :flats
end
