Rails.application.routes.draw do
  #get 'pages/home'
  root 'pages#home'
  
  resources :profiles
  #devise_for :users #can't have 2 sets of routes defined, see below
  resources :notes
  resources :walks

  #get 'pages/about'
  get "/about" => "pages#about"
  
  #get 'pages/other'
  get "/other" => "pages#other"

  #to pick up my controller with the after sign up route
  devise_for :users, controllers: { registrations: "registrations" }
  
	
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
