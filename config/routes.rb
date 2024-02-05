Rails.application.routes.draw do
  devise_for :users

  root "splash_screen#index"

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  resources :categories do
    resources :records
  end

  resources :users
end
