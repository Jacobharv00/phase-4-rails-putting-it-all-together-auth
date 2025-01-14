Rails.application.routes.draw do
  # resources :users
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/recipes', to: 'recipes#create'
  resources :recipes, only: [:index, :create]
end
