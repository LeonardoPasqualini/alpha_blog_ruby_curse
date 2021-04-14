Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles #, only: [:show, :index, :new, :create, :edit, :update, :destroy] - 'only' expose only a few of those options
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
