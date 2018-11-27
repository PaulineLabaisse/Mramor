Rails.application.routes.draw do

resources :charges
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/', to: 'template#index'
get '/blog', to: 'template#blog'
get '/cart', to: 'template#shopping-cart'
post '/cart', to: 'template#index'



end
