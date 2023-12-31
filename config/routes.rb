Rails.application.routes.draw do
  
  devise_for :users
  root to: "homes#top"
  
  resources :post_images, only: [:new, :index, :show]
  
  get '/about', to: 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
