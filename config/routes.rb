Rails.application.routes.draw do
  devise_for :users
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  
  namespace :api do
    namespace :v1 do
      resources :reservations
      resources :rooms
    end
  end  
end
