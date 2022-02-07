Rails.application.routes.draw do
  root to: 'themes#new'
  resources :themes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
