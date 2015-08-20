Rails.application.routes.draw do
  get 'sessions/new'

  resources :users

  get 'welcome/index'

  get 'welcome/about'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'welcome#index'
end
