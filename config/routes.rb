Rails.application.routes.draw do
  resources :properties
  get  "/properties",      to:"properties#index"
  get  "/properties/:id",  to: "properties#show"
  patch "/properties/:id", to: "properties#update"
  post  "/properties",     to: "properties#create"
  delete "/properties/:id",  to: "properties#destroy" 
  
  resources :managers
  get  "/managers/:id",  to: "managers#show"
  get  "/managers",      to:"managers#index"

  resources :users
  get    "/users",      to: "users#index"
  get    "/users/:id",  to: "users#show"
  post   "/users",      to: "users#create"
  patch  "/users/:id",  to: "users#update" 
  delete "/users/:id",  to: "users#destroy" 

  
  post  "/login",         to: "sessions#login"
  get   "/userInSession", to: "sessions#get_logged_in_user"
  delete "/logout",       to: "sessions#logout"
end






