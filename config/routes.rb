Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'search', to: 'pages#search'
  resources :cars
  resources :bookings, only: [:new, :create, :destroy, :index] do
    collection do
      get 'my-cars'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
