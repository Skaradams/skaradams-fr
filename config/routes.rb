Skaradams::Application.routes.draw do
  devise_for :users

  root 'home#index'

  get '/contact', to: 'home#contact', as: :contact
  post '/send_contact', to: 'home#send_contact', as: :send_contact
  get '/about', to: 'home#about', as: :about


  resources :articles, only: [:show]

  namespace :admin do
    get "/" => "home#index"
    resources :articles do
      resources :sections
    end
  end
end
