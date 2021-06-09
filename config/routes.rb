Rails.application.routes.draw do
 devise_for :users
 root 'pages#home'
 get '/upload', to: 'images#new'
 resources :images, only: [:index, :show, :create]
 get '/@:username', to: 'users#show', as: :profile
end
