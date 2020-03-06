Rails.application.routes.draw do
  resources :likes, only: [ :delete]
  resources :memes, only: [:index, :show, :new, :create, :delete]
  resources :users, only: [:index, :show, :create, :new, :delete]
  post '/likes/:meme_id', to: 'likes#create', as: 'create_like'
  get '/logout', to: 'users#logout', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'memes#index'
end
