Rails.application.routes.draw do
  resources :character_spells, except: [:new, :edit]
  resources :character_skills, except: [:new, :edit]
  resources :spells, only: [:index, :show]
  resources :skills, only: [:index, :show]
  resources :character_stats, except: [:new, :edit]
  resources :stats, only: [:index, :show]
  resources :characters, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
