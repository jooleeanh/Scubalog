Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    omniauth_callbacks: 'omniauth_callbacks'
  }
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :divespots
  resources :animals
  resources :gears

  # 'nested' in current_user:
  resources :scubadives do
    resources :dives
    resources :buddies
    resources :sightings
  end
  resources :freedive_sessions do
    resources :dives
    resources :buddies
    resources :sightings
  end
  resources :gear_sets do
    resources :gear_uses
  end
end
