Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :authors, only: [ :new, :create ]
  resources :reports, only: [ :index, :show, :new, :create ]
  resources :report_authors, only: [ :new, :create ]
end
