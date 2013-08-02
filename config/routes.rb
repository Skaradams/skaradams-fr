Skaradams::Application.routes.draw do
  devise_for :users

  get "home/index"
  root 'home#index'

  resources :articles, only: [:show]

  namespace :admin do
    get "/" => "home#index"
    resources :articles
  end
end
