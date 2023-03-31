Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/", to: "page#home"
  get "/All", to: "pages#all"
  get "/Managers&Admin", to: "pages#MA"
  get "/Admin", to: "pages#A"
  # Defines the root path route ("/")
  # root "articles#index"
end
