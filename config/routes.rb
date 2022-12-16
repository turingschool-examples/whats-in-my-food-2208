Rails.application.routes.draw do
  resources :foods
  root "welcome#index"
  get '/foods', to: 'foods#search'
end
