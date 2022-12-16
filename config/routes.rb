Rails.application.routes.draw do
  get 'foods/index'
  get 'foods/show'
  root "welcome#index"
  get '/foods', to: 'foods#search'
end
