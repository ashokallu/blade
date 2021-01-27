Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'products/index'

  root to: 'customers#index'

  post 'customers', to: "customers#create"
  # post 'customers/index', defaults: { format: "json" }
  resources :customers do
    collection do
      get 'redirect_action'
    end
    resources :orders
  end
end
