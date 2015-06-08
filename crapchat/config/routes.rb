Rails.application.routes.draw do
  root 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'links' => 'static_pages#links'

  get 'help' => 'static_pages#help'

  
end