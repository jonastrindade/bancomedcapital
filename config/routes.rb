Rails.application.routes.draw do
  
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"
  
  root to: 'extratos#index'
  
  devise_for :users
  
  resources :extratos do
    collection do
      get :balanco
      get :saldo
      get :sidekiq_teste
    end
  end

  resources :saldos do
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
