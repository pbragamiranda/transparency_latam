Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :authors, only: [ :new, :create ]
  resources :report_authors, only: [ :new, :create ]
  resources :reports, only: [ :index, :show, :new, :create ] do 
    resources :evaluations, only: [ :index, :new, :create ] do
      resources :active_evaluations, only: [ :new, :create ]
      resources :passive_evaluations, only: [ :new, :create ]
    end
  end
end
