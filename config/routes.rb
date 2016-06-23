Rails.application.routes.draw do
  resources :characters, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  post '/create-character' => 'characters#create'
  patch '/edit-character/:id' =>  'characters#update'
  delete '/delete-character/:id' => 'characters#destroy'
  resources :users, only: [:index, :show]
end
