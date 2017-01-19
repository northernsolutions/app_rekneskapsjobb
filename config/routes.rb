Rails.application.routes.draw do
  resources :contact
  resources :for_employers
  resources :about

  root 'landing#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
