Rails.application.routes.draw do

  get "/recipes"    => "recipes#index", as: "home"
  get "/recipes/new" => "recipes#new", as: "recipes_new"
  post "/recipes"    => "recipes#create"
  get "/recipes/:id" => "recipes#show", as: "recipes_show"
  get "/recipes/:id/edit" => "recipes#edit", as: "recipes_edit"
  put "/recipes/:id"      => "recipes#update"
  patch "/recipes/:id"    => "recipes#update"
  delete "/recipes/:id"   => "recipes#destroy"

  get "/users"    => "users#index", as: "user_index"
  get "/users/new" => "users#new", as: "users"
  post "/users/:id" => "users#create"
  get "/users/:id" => "users#show", as: "users_show"
  get "/users/:id/edit" => "users#edit", as: "users_edit"
  put "/users/:id" => "users#update", as: "users_update"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  get "/sessions"   => "sessions#new", as: "login"
  post "/sessions"  => "sessions#create"
  delete "/sessions" => "sessions#destroy", as: "logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
