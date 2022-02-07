Rails.application.routes.draw do
  root to: 'themes#new1'
  resources :themes
  get '/app/views/themes/progress.js' => 'themes#progress'
  get '/app/views/themes/progress1.css' => 'themes#progress1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
