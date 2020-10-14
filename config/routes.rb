Rails.application.routes.draw do
  get 'products/index'
  # get 'products/foo', defaults: {format: :json}, format: true
  # get 'products/foo', format: :json
  # get 'products/foo', format: "html", defaults: {format: "json"}
  # get 'products/foo', defaults: {format: :json}, format: :html
  # get 'products/foo', format: "json", defaults: {format: :html}
  # get 'products/foo', defaults: {format: :json}, format: false
  # get 'products/foo', defaults: {format: :html}, format: false
  # get 'products/foo', format: "json"
  # get 'products/foo', defaults: {format: :json}, format: "html"
  # get 'products/foo', defaults: {format: :json}, "format" => "html"
  # get 'products/foo', defaults: {format: :json}, "format" => :html

  # resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
