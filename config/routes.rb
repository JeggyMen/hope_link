Rails.application.routes.draw do
  devise_for :users, controllers: { registration: 'users/registrations' }

  namespace :admin do
    get 'dashboard', to: 'dashboards#index'
    resources :donations, only: [:index] 
    resources :donors, only: [:index]
    resources :allocations, only: [:new, :create]
  end

  namespace :donors do
    get 'dashboard', to: 'dashboards#show'
    resources :donations, only: [:new, :create]
  end

  get 'home/index'
  root 'home#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
