Rails.application.routes.draw do
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
  resources :account_activations, only: [:edit]
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :craps
end
