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

  # create routing for books base on controller

  # generate routing only for some methods
  resources:books do
    get :active, on: :collection
  end

  # resources:books,except :[:index,:show] => generate routing except for some methods on array except

end
