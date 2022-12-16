Rails.application.routes.draw do
  root 'welcome#index'
  get '/foods', to: 'foods_search#index', as: :foods_search
end
