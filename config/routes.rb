Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/home', to: 'home#index'
  get '/hallo/:id', to: 'home#hallo'

  # get '/books', to: 'books#index'
  # get '/books/:id', to: 'books#show'
  # get '/books/new', to: 'books#new'
  # post '/books', to: 'books#create'
  # put '/books/:id', to: 'books#update'
  # delete '/books/:id', to: 'books#destroy'
  # create endpoint manually
end
