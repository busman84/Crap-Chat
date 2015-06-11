Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'create' => 'static_pages#create'
  get 'links' => 'static_pages#links'
  get 'help' => 'static_pages#help'
  get 'signup' => 'users#new'
  get "login" => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users do
<<<<<<< HEAD
    member do 
=======
    member do
>>>>>>> 566092c7e3f4c5c7786e43ea01c7934333535730
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :craps, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
<<<<<<< HEAD
=======
  
>>>>>>> 566092c7e3f4c5c7786e43ea01c7934333535730
end
