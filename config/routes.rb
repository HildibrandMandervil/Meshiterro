Rails.application.routes.draw do
  resources :users, only: [:show ,:edit]
  devise_for :users
  resources :post_images, only: [:new, :index, :show ,:create ,:destroy]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'homes/about'=>'homes#about', as: 'about'
  root to: 'homes#top'
end
