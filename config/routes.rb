Rails.application.routes.draw do
  root 'articles#index'
  resources :articles, only: [:show, :new, :create, :destroy]
end
