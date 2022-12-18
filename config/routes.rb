Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to:"tests#new"
  resource :tests, only: [:new, :create, :show]
end
