Rails.application.routes.draw do
  get 'publications/index'
  devise_for :users

    root to: 'publications#index'

    resources :publications, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
