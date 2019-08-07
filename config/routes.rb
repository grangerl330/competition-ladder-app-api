Rails.application.routes.draw do
  get '/api/get_current_user', to: 'api/sessions#get_current_user'
  post '/api/login', to: 'api/sessions#create'
  delete '/api/logout', to: 'api/sessions#destroy'
  patch '/api/players', to: 'api/players#update_from_ladder'

  namespace :api do
    resources :matches
    resources :players
    resources :ladders
    resources :users
  end
end
