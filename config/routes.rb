Rails.application.routes.draw do
  namespace :api do
    resources :matches
    resources :players
    resources :ladder
    resources :users
  end
end
