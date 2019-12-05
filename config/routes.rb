Rails.application.routes.draw do
  resources :tags
  resources :post_tags
  resources :comments
  resources :likes
  resources :posts
  resources :users
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  delete '/post_tags/:post_id/:tag_id', to: 'post_tags#destroy_tag' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
