Rails.application.routes.draw do
  devise_for :users
  root to: 'extrato#index'
  get 'extrato/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
