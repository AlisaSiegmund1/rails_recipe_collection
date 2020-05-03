Rails.application.routes.draw do
  devise_for :users
  root to: 'recipes#index'

  get 'filterSweet', to: 'recipes#sweet'
  get 'filterSavory', to: 'recipes#savory'

  resources :recipes do
    resources :ingredients, only: [:new, :create, :destroy]
    resources :steps, only:[:new, :create, :destroy, :edit]
  end

end
