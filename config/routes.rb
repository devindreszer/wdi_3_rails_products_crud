Rails.application.routes.draw do

  # creates all the routes for Product resource
  resources :products, :songs

  # # GET HTTP Method
  # # Path is '/products'
  # # Route to the ProductsController#index
  # get '/products', to: 'products#index'
  # get '/songs', to: 'songs#index'

  # # Create
  # # Path with products/new got new action
  # get '/products/new', to: 'products#new'
  # get '/songs/new', to: 'songs#new'

  # # When you post it will go the create action
  # post '/products', to: 'products#create'
  # post '/songs', to: 'songs#create'

  # # Path with products/id go to show method
  # get '/products/:id', to: 'products#show', as: 'product'
  # get '/songs/:id', to: 'songs#show', as: 'song'

  # # HTTP GET Request to get the FORM for updating ONE EXISTING product
  # get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  # patch '/products/:id', to: 'products#update'

  # get '/songs/:id/edit', to: 'songs#edit', as: 'edit_song'
  # patch '/songs/:id', to: 'songs#update'

  # # HTTP DELETE Request
  # delete '/products/:id', to: 'products#destroy'

  # delete '/songs/:id', to: 'songs#destroy'

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
