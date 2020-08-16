Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'pages/about' => 'pages#about'
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
