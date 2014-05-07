Rails.application.routes.draw do

  # resources :products
  # HTTP GET Request for all the products
  get '/products', to: 'products#index'

  # HTTP GET Request to get the FORM for creating ONE new product
  get '/products/new', to: 'products#new'
  # HTTP POST Request to create a product. Uses the form fields to create the product.
  post '/products', to: 'products#create'

  # HTTP GET Request to get the FORM for updating ONE EXISTING product  
  get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  patch '/products/:id', to: 'products#update'
    
  # HTTP GET Request for a specific product
  # NOTE: the as: 'product' will generate a url helper (product_url, product_path)
  get '/products/:id', to: 'products#show', as: 'product'

  # HTTP DELETE Request 
  delete '/products/:id', to: 'products#destroy'
  
  # HTTP GET Request for a specific song.
  get '/songs/:id', to: 'songs#show'
  # HTTP GET Request for all the products
  get '/songs' => 'songs#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
