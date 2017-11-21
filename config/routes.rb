Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :orders
  root 'store#index', as: 'store_index'
  resources :line_items
  resources :carts
  get 'store/index'
  
  resources :users
  resources :products
  #root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'products#index'
end
