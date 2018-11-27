Rails.application.routes.draw do



  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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
