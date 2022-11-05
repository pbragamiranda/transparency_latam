Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Blazer::Engine, at: "blazer"
  devise_for :users
  root to: "pages#home"
  resources :authors, only: [ :new, :create ]
  resources :report_authors, only: [ :new, :create ]
  resources :evaluation_branches, only: [ :new, :create ]
  resources :reports, only: [ :index, :show, :new, :create ] do 
    resources :evaluations, only: [ :index, :new, :create ] do
      resources :active_evaluations, only: [ :new, :create ]
      resources :passive_evaluations, only: [ :new, :create ]
    end
  end
end
