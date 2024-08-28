Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root 'home#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
