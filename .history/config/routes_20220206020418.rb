Rails.application.routes.draw do
  root to: 'themes#new1'
  resources :themes
  get '/app/views/themes/progress.js' => 'themes#progress'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
