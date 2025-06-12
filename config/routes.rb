Rails.application.routes.draw do
  get "bookings/create"
  namespace :host do
    get "flats/new"
    get "flats/create"
  end
  root "pages#home"

  get "pages/home"
  get "pages/cabane", to: "pages#cabane"
  get "pages/experiences", to: "pages#experiences"
  get "pages/services", to: "pages#services"
  get "bookings/:id/confirmation", to: "bookings#confirmation", as: :booking_confirmation

  # get "pages/flats", to: "pages#flats"
  devise_for :users

  resources :reviews, only: [:create]

  resources :flats do
    resources :reviews, only: [:index, :show, :edit, :update, :destroy]
    resources :bookings, only: :create
  end

  # (PWA - désactivé pour l’instant)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
