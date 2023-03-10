Rails.application.routes.draw do
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :sessions, olny: [:new, :create, :destroy]
  resources :favorites, only: [:index, :create, :destroy]
end