Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end

  root to: 'themes#index'
  resources :themes
  get '/app/views/themes/progress.js' => 'themes#progress.js'
  get '/app/views/themes/progress1.css' => 'themes#progress1.css'
  get 'app/views/themes/new' => 'themes#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
