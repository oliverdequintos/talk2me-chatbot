Rails.application.routes.draw do

  mount Facebook::Messenger::Server, at: 'bot'

  resources :users
  root to: 'users#index'
end
