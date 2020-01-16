Rails.application.routes.draw do
  devise_for :users
  root to: 'recipes#index'

  resources :recipes do
    resources :recipe_ingredients, only: [:new, :create, :edit]
  end

  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home', to: 'pages#home'
end
