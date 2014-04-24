Ariaquen::Application.routes.draw do
  resources :designs


  get "site/splash"
  get "site/home"
  get "site/contact"
  get "site/about"
  get "site/store_locator"
  get "site/blog"
  get "site/gallery"
  get "site/affiliates"
  get "site/testimonials"
  get "site/discounts"


  resources :site
  resources :categories, :except => [:index, :show]

  resources :forums, :except => :index do

  resources :topics, :shallow => true, :except => :index do

  resources :posts, :shallow => true, :except => [:index, :show]

    end

    root :to => 'categories#index', :via => :get

  end

  resources :userprofiles


  #get 'tags/:tag', to: 'articles#index', as: :tag

  get 'tags/:tag' => 'articles#index', :as => :tag

  get "orderproducts/index"
  get "orderproducts/show"
  get "orderproducts/new"
  get "orderproducts/edit"


  devise_for :users do 
    resources :orders 
  end


  resources :orders do 
    resources :orderproducts 
  end

  resources :articles do
    resources :comments
  end

  get "cart/index" 

  resources :products

 
  match '/search_by_category/:product/:gender' => 'products#search_by_category'
  match '/check', :controller=>'primes', :action=>'checkprime'
  match '/validate', :controller=>'primes', :action=>'isprime'
  match '/checkout' => 'cart#createOrder'

  match '/cart' => 'cart#index' 
  match '/cart/:id' => 'cart#add' 
  match '/cart/remove/:id' => 'cart#remove'
  match '/clearCart' => 'cart#clearCart'
  match '/myuserprofile' => 'userprofiles#myuserprofile'
  match '/search' => 'products#index'
  match '/product_category/:id' => 'products#product_category'
  match '/about' => 'site#about'


  root :to => "home#index"





  # Sample resource route with options:

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



  # Sample resource route with sub-resources:

  #   resources :products do

  #     resources :comments, :sales

  #     resource :seller

  #   end



  # Sample resource route with more complex sub-resources

  #   resources :products do

  #     resources :comments

  #     resources :sales do

  #       get 'recent', :on => :collection

  #     end

  #   end



  # Sample resource route within a namespace:

  #   namespace :admin do

  #     # Directs /admin/products/* to Admin::ProductsController

  #     # (app/controllers/admin/products_controller.rb)

  #     resources :products

  #   end



  # You can have the root of your site routed with "root"

  # just remember to delete public/index.html.

  # root :to => 'welcome#index'



  # See how all your routes lay out with "rake routes"



  # This is a legacy wild controller route that's not recommended for RESTful applications.

  # Note: This route will make all actions in every controller accessible via GET requests.

  # match ':controller(/:action(/:id))(.:format)'

  

end