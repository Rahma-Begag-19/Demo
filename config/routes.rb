Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # GET /about
  get "about" ,to:"about#index"

  get "sign_up" , to:"registration#new"
  post "sign_up" , to: "registration#create"
  delete "logout" , to: "session#destroy", as: :logout
  
  get "/", to: "main#index" 



end

