Rails.application.routes.draw do
  get 'publications/index'
  devise_for :users

    root to: 'publications#index'

    resources :publications, only: [:new, :create]
    resources :chatrooms, only: [:index, :show] do
      resources :messages, only: :create
    end
end
