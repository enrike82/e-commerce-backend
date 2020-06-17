Rails.application.routes.draw do
  resources :cart_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
    resources :users
    post 'authenticate', to: 'authentication#authenticate'
    resources :products
  end
end
