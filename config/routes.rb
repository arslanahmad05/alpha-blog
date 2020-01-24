Rails.application.routes.draw do

  root 'pages#home'
  resources :articles
  get 'signup', to: 'users#new'
  # post 'users', to: 'user#create'
  resources :users, except: [:new]

end
