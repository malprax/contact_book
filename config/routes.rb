ContactBook::Application.routes.draw do
 
  resources :employments

  resources :messages
  #get '/contact_us' => 'messages#new'   

  resources :images

  resources :pages, only: [:index, :new, :create]
  resources :pages, path:"", except: [:index, :new, :create]
  # get '*id', to: 'pages#show'
  
  ####################### Navigasi #########################################
  #about us 
  get '/about' => 'pages#show'
  get '/our_philosophy' => 'pages#show'
  get '/vision_and_mission' => 'pages#show'  
  get '/founder_message' => 'pages#show'
  get '/high_quality_education' => 'pages#show'
  get '/right_and_responsibility' => 'pages#show'
  
  #our campus
  get '/facilities' => 'pages#show'
  get '/our_staff' => 'pages#show'
  get '/head_of_school_welcome' => 'pages#show'
  
  #curriculum
  get '/pre_school' => 'pages#show'
  get '/primary_school' => 'pages#show'
  
  #programs
  get '/language_support' => 'pages#show'
  get '/learning_support_for_special_need' => 'pages#show'
  get '/student_welfare_program' => 'pages#show'
  get '/excursion_or_fieldtrip' => 'pages#show'
  get '/extracurricular_activity' => 'pages#show'
  get '/anti_bullying_program' => 'pages#show'
  get '/quran' => 'pages#show'
  get '/akhlakul_karimah' => 'pages#show'
  get '/sholat_dan_doa' => 'pages#show'
  
    
  #employment
   get '/employment' => 'employments#index'
  
  #contact us 
  get '/contact_us' => 'messages#new' 
  #get 'contact' => 'contact#new', :as => 'contact'
  #post 'contact' => 'contact#create'
  #######################################################################

  devise_for :users, path_names: {sign_in: "sign_in", sign_out: "sign_out"}
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

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
