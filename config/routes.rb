Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :reviews do
    resources :comments
    resource :bookmark
  end

  resources :users

  resource :session

  get "about", to: "pages#about"
  get "terms", to: "pages#terms"

  root "pages#home"






end
