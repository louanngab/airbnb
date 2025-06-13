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
  get "dashboard/bookings", to: "bookings#dashboard", as: :dashboard_bookings

  devise_for :users

  resources :reviews, only: [:create]


  resources :flats do
    resources :reviews, only: [:index, :show, :edit, :update, :destroy]
    resources :bookings, only: :create

    member do
      get :owner_bookings
    end
  end

  resources :bookings, only: [] do
  member do
    patch :accept
    patch :reject
    patch :cancel
  end
end
end
