Tradr::Application.routes.draw do
  resources :stocks

  root :to => 'users#index'
  resources :user_sessions
  resources :users

  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
end
