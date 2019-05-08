Rails.application.routes.draw do

  resources :tradingbooks
  resources :users
  resources :stocks
  resources :analysts
  resources :blogs
  
  # sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'



  # get 'tradingbooks/index'
  #
  # get 'tradingbooks/show'
  #
  # get 'tradingbooks/new'
  #
  # get 'tradingbooks/create'
  #
  # get 'tradingbooks/edit'
  #
  # get 'tradingbooks/update'
  #
  # get 'tradingbooks/destroy'
  #
  # get 'blogs/index'
  #
  # get 'blogs/show'
  #
  # get 'blogs/new'
  #
  # get 'blogs/create'
  #
  # get 'blogs/edit'
  #
  # get 'blogs/update'
  #
  # get 'blogs/destroy'
  #
  # get 'analysts/index'
  #
  # get 'analysts/show'
  #
  # get 'analysts/new'
  #
  # get 'analysts/create'
  #
  # get 'analysts/edit'
  #
  # get 'analysts/update'
  #
  # get 'analysts/destroy'
  #
  # get 'stocks/index'
  #
  # get 'stocks/show'
  #
  # get 'stocks/new'
  #
  # get 'stocks/create'
  #
  # get 'stocks/edit'
  #
  # get 'stocks/update'
  #
  # get 'stocks/destroy'
  #
  # get 'users/index'
  #
  # get 'users/show'
  #
  # get 'users/new'
  #
  # get 'users/create'
  #
  # get 'users/edit'
  #
  # get 'users/update'
  #
  # get 'users/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
