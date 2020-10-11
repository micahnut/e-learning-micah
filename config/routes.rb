Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'users/new'
  root 'static_pages#home'

  # get 'static_pages/home'
  # get 'static_pages/about'
  # get 'static_pages/contact'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'

  # Complete CRUD routes for user only
  resources :users

  # New, create and Destroy for sessions
  resources :sessions, only: [:new, :create, :destroy]

  # /login
  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'

 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
