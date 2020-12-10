Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  # resources :users, only: [:new, :create]do
    resources :prototypes do
      resources :comments, only: :create
    end
    resources :users, only: :show
  # end
end
 