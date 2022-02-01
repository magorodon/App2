Rails.application.routes.draw do

  resource :post_images, only: [:new, :index, :show]

  get 'homes/about' => 'homes#about', as: 'about'
  devise_for :users
  root to: "homes#top"
end
