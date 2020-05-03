Rails.application.routes.draw do
  devise_for :users
  root to: 'recipes#index'

  get 'filterSweet', to: 'recipes#sweet'
  get 'filterSavory', to: 'recipes#savory'

  resources :recipes do
    resources :ingredients, only: [:new, :create, :destroy]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'categoryFilter', to: 'pages#filter'
end
