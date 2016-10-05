Rails.application.routes.draw do
devise_for :users

  resources :users

  get 'welcome/index'
  get 'welcome/faq'
  get 'welcome/khang'
  get 'welcome/cssplayground'
  resources :articles do
      resources :comments
  end

  root to: "articles#index"
end
