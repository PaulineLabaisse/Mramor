Rails.application.routes.draw do

  devise_for :admins
  devise_for :users

  resources :item, only: [:index, :show]
  namespace :admin do
    root to: 'template#index'
    resources :item, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  get '/', to: 'template#index'
  get '/index', to: 'template#index'
  get '/about', to: 'template#about'
  get '/checkout', to: 'template#checkout'
  get '/my-account', to: 'template#my-account'
  get '/shop-full', to: 'template#shop-full'
  get '/shopping-cart', to: 'template#shopping-cart'
  get '/single-product', to: 'template#single-product'
  get '/shop-filter', to: 'template#shop-filter'
  get '/contact', to: 'template#contact'


end
