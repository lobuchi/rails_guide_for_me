Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
=begin
  get '/products', to: 'products#index'
  post '/products', to: 'products#create'
  get '/producrs/:id', to: 'products#show'
  get '/products/new', to: 'products#new'

  get '/products/:id/edit' , to: 'products#edit'
  patch '/products/:id', to: 'products#edit'
  put '/products/:id' , to: 'products#update'

  delete '/products/:id', to: 'products#destroy'

  get "up" => "rails/health#show", as: :rails_health_check
=end
  root 'products#index'
  resources :products do
    resources :subscribers, only [ :create ]
  end
end
