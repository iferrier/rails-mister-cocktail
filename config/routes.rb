Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
