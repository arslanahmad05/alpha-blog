Rails.application.routes.draw do

  root 'pages#home'
  resources :articles
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # post 'users', to: 'user#create'
  resources :users, except: [:new]

end
