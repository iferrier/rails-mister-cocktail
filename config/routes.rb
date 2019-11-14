Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
end
