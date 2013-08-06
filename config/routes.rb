Skaradams::Application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :articles, only: [:show]

  namespace :admin do
    get "/" => "home#index"
    resources :articles do
      resources :sections
    end
  end
end
