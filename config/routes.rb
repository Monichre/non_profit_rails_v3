Rails.application.routes.draw do

  devise_for :non_profits, :controllers => { registrations: 'non_profit/registrations' }
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users do
    resources :non_profits
  end

  resources :non_profits

  get 'home/index'
  root to: 'home#index'
end
