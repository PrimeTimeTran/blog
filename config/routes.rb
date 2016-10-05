Rails.application.routes.draw do
root to: "articles#index"

  devise_for :users

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users


  resources :comments
  get 'welcome/index'
  get 'welcome/faq'
  get 'welcome/khang'
  get 'welcome/cssplayground'
  resources :articles
end
