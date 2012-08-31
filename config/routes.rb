Testpage::Application.routes.draw do
	resources :users
	resources :sessions, only: [:new, :create, :destroy]
	root to: 'nom#home'
  get "users/new"
  get "sessinos/new"
  get "nom/home"
  get "nom/help"
  get "nom/about"
  get "nom/test"
  
  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
 
end
