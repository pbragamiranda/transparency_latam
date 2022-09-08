Rails.application.routes.draw do
  get 'authors/new'
  get 'authors/create'
  devise_for :users
  root to: "pages#home"
  resources :reports, only: [ :index, :show, :new, :create ]
end
