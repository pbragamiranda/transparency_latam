Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :reports, only: [ :index, :show, :new, :create ]
  resources :authors, only: [ :new, :create ]
end
