Rails.application.routes.draw do
  # root to: 'themes#prottype'
  root to: 'themes#index'
  resources :themes
  get '/app/views/themes/progress.js' => 'themes#progress.js'
  get '/app/views/themes/progress1.css' => 'themes#progress1.css'
  get 'app/views/themes/new' => 'themes#new'
  # get '/app/views/themes/new1.html.erb' => 'themes#new1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
