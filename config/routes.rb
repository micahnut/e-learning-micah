Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'

  # get 'static_pages/home'
  # get 'static_pages/about'
  # get 'static_pages/contact'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'

  # Complete CRUD routes for user only
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
