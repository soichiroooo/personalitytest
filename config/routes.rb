Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to:"tests#index"
  resource :tests, only: [:index, :new, :create, :show] do
    collection do
      get 'color'
      get 'analysis'
    end
  end
  resources :users, only: :show
end
