Rails.application.routes.draw do
  root "pages#home"

  get "pages/home"
  get "pages/cabane", to: "pages#cabane"
  get "pages/experiences", to: "pages#experiences"
  get "pages/services", to: "pages#services"

  devise_for :users

  resources :reviews, only: [:create]

  resources :flats do
    resources :reviews, only: [:index, :show, :edit, :update, :destroy]
  end
end
