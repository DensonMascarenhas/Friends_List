Rails.application.routes.draw do
    resources :friends

  root 'homepage#home'
#   get 'friends', to:'friends#index'
#   get 'friend/:id', to:'friends#show'
#   get 'friend/:id/edit', to:'friends#edit'
#   get 'new', to:'friends#new'
  
end
