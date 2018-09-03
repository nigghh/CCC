Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/share', to: 'static_pages#share'
  get '/info', to: 'static_pages#info'
  get '/help', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get '/company', to: 'static_pages#company'
  get '/tos', to: 'static_pages#tos'
  get '/sct', to: 'static_pages#sct'

  get '/signup', to: 'users#new'
end
