Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
