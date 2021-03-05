Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :groups, only: [:index, :show]
  resources :students, only: [:new, :create, :show, :edit, :update, :destroy]

  root 'groups#index'
end
