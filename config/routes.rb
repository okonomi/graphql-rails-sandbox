Rails.application.routes.draw do
  resources :users
  resources :posts
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
