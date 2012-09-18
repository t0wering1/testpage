Testpage::Application.routes.draw do
  get "noms/new"

  get "r/new"

	resources :users
	resources :sessions, only: [:new, :create, :destroy]
	resources :noms
  resources :nom
  root to: 'noms#new'
  get "users/new"
  get "sessions/new"

  
  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/register', to: 'noms#new' 
end
