Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "page#home"
  get "/All", to: "pages#all"
  get "/Managers&Admin", to: "pages#MA"
  get "/Admin", to: "pages#A"
  get "/changeRole", to: "pages#changeRole"
end
