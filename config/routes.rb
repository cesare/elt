Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/yamatoji', as: 'rails_admin'
  devise_for :yamatojis
  root 'vote_targets#index'
  get 'votes/result'
  resources :votes, except: %i(index destroy)
  resources :vote_targets, only: %i(index)
end
