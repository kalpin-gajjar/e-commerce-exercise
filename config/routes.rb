Rails.application.routes.draw do
  root "products#index"
  resources :products
  post "products/add/:id", to: "products#add_product", as: "products_add"
  post "products/remove/:id", to: "products#remove_product", as: "products_remove"
  get "cart/show", to: "cart#show", as: "cart"
  post "cart/remove-product/:id", to: "cart#remove_product", as: "cart_remove_product"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
