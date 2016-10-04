Rails.application.routes.draw do
  root to: "articles#index"
  resources :comments
  get 'welcome/index'
  get 'welcome/faq'
  get 'welcome/khang'
  get 'welcome/cssplayground'
  resources :articles
end
