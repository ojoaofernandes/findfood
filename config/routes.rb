Rails.application.routes.draw do
  root 'welcome#index'

  get  'welcome/index'
  get  'welcome/restaurant'

  resources :dishes
  resources :ingredients
  resources :categories
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
