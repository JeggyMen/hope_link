Rails.application.routes.draw do
  namespace :donors do
     get 'dashboard', to: 'dashboards#index'
  end
  get 'home/index'
  devise_for :users
  root 'home#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
