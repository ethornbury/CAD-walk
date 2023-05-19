Rails.application.routes.draw do
  devise_for :users
  resources :notes
  resources :walks
  
  #get 'pages/home'
  root 'pages#home'
  
  #get 'pages/about'
  get "/about" => "pages#about"
  
  #get 'pages/other'
  get "/other" => "pages#other"
  
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
