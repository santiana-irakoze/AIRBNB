Rails.application.routes.draw do
  get 'users/dashboard'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :games do
    resources :bookings
    resources :reviews
  end

  get 'dashboard', to: 'users#dashboard', as: :dashboard
  patch 'accept/:id', to: 'bookings#accept', as: :accept_booking
  patch 'deny/:id', to: 'bookings#deny', as: :deny_booking

  # Defines the root path route ("/")
  # root "posts#index"
end
