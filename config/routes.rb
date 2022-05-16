Rails.application.routes.draw do
  devise_for :users
  resources :users
  # devise_for :users  
  # get '/articles', to:'articles#index'
  # get '/articles/:id', to:'articles#show',as: :article
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   resources :articles
  
   resources :articles do
    resources :comments
  end
  # Defines the root path route ("/")
  # get '/articles', { to:'index' }
  root "articles#index"
end
