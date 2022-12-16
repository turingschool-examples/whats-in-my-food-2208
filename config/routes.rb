Rails.application.routes.draw do
  root to: "welcome#index"
  get '/foods', to: 'foods#search'
end
