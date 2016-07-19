Rails.application.routes.draw do
  resources :comments
  get 'users/new'

  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/faq'

  resources :articles
  root to: "articles#index"

end
