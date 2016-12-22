Rails.application.routes.draw do
  get 'gear_set/index'

  get 'gear_set/show'

  get 'gear_set/new'

  get 'gear_set/edit'

  get 'gear/index'

  get 'gear/show'

  get 'gear/new'

  get 'gear/edit'

  get 'freedive_session/index'

  get 'freedive_session/show'

  get 'freedive_session/new'

  get 'freedive_session/edit'

  get 'scubadive/index'

  get 'scubadive/show'

  get 'scubadive/new'

  get 'scubadive/edit'

  get 'divespot/index'

  get 'divespot/show'

  root to: 'pages#home'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    omniauth_callbacks: 'omniauth_callbacks'
  }
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
