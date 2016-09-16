Rails.application.routes.draw do
  devise_for :non_profits, :controllers => { registrations: 'non_profit/registrations' }
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users, :non_profits
  get 'home/index'
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
