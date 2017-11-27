Rails.application.routes.draw do
  root 'pages#index'

  # Long Version
  # get '/pages', to: 'pages#index'
  # get '/pages/:id', to: 'pages#show'
  # get '/pages/new', to: 'pages#new'
  # get '/pages/:id/edit', to: 'pages#edit'
  # post '/pages', to: 'pages#create'
  # put '/pages/:id', to: 'pages#update'
  # delete '/pages/:id', to: 'pages#destroy'

  # Short Version
  resources :pages
end
