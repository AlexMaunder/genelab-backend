Rails.application.routes.draw do
  root :to => 'genelab#index'

  resources :sessions, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  resources :users
  resources :strains
  resources :labnotes
end
