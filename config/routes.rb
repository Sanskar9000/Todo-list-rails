Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'list#index'

  get '/remove_list/:id', to: 'list#remove_list'
  get '/update_list/:id', to: 'list#update_list'
end
