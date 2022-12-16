Rails.application.routes.draw do
  devise_for :users
  root to:"tests#new"
  resources :tests, only: [:new, :create, :show]
end
