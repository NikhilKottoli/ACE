Rails.application.routes.draw do
  resources :blogs
  devise_for :users
  get 'home/index'
  get 'home/alumini'
  get 'home/library'
  get 'home/pay'
  post '/subscribe', to: 'subscriptions#create', as: 'subscribe'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
