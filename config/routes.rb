Rails.application.routes.draw do
  root to: "articles#index"
  resources :comments
  get 'welcome/index'
  get 'welcome/faq'
  resources :articles
end
