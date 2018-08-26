Rails.application.routes.draw do
  get 'posts/new'
  # For details on the D SL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'root#top'

  get '/index' => 'posts#index'

  get '/posts' => 'posts#index'

  post '/posts' => 'posts#create'

  get '/posts/:id' => 'posts#show', as: 'post'

  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'

  patch '/posts/:id' => 'posts#update', as: 'update_post'

  delete '/post/:id' => 'posts#destroy', as: 'destroy_post'
end

