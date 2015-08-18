Rails.application.routes.draw do
  
  devise_for :users
  resources :users, path: 'admin/users'

  
  resources :infos, path: 'admin/infos'
  resources :mainslides, path: 'admin/mainslides'
  resources :sections, path: 'admin/sections'
  resources :vendor_cats, path: 'admin/vendor_cats'
  resources :sidebars, path: 'admin/sidebars' 
  resources :galleries, path: 'admin/galleries'
  resources :contactus do
    collection do
      get 'thankspage'
    end
  end

  resources :albums, path: 'admin/albums'
  # resources :businesses, path: 'admin/businesses'

  # get 'contacts/new'

  # get 'contacts/create'

  resources :posts, path: 'admin/posts'
  resources :categories, path: 'admin/categories'
  devise_for :vendors
  get 'undev/index'

  resources :articles, path: 'admin/articles'
  resources :admins, path: 'admin/admins'
  
  resources :vendors, path: 'admin/vendors'

  resources :homes do
    collection do
      get 'vendor'
      get 'vendorlist'
      get 'guest'
      get 'artikel'
      get 'wedding'
      get 'event'
      get 'coupon'
      get 'contact'
      get 'show_post'
      get 'vendor_search'
      get 'brides'
    end
  end

  get 'vendors/page'
  get 'vendors/member'
  get 'vendors/restrictarea'
  get 'vendors/pricelist'
  get 'vendors/frontview'


  match '/contacts', to: 'contacts#new', via: 'get'
  
  # resources "contacts", only: [:new, :create]

  # resources :vendors do
  #   member do
  #     get :vendors, :as => 'admin/vendors'
  #   end
  # end

  devise_for :admins
  
  get 'homes/index'
  get 'homes/about'


  get 'admins/noaccess'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'home#index'
  root 'undev#index'
  # Switcher <--
  # root 'home#index'

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
