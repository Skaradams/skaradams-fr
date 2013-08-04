Skaradams::Application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :articles, only: [:index, :show]

  namespace :admin do
    get "/" => "home#index"
    resources :articles
  end
end
