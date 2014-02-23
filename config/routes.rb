ContactBook::Application.routes.draw do
 
  resources :employments
  resources :messages
  #get '/contact_us' => 'messages#new'  
  resources :images
  resources :pages, only: [:index, :new, :create]
  #resources :pages, path:"", except: [:index, :new, :create]
  # get '*id', to: 'pages#show'
  
  ####################### Navigasi #########################################
  #about us     
  get '/our_philosophy' => 'pages#show', :defaults => { :id => '20' }
  get '/vision_and_mission' => 'pages#show', :defaults => { :id => '21' }  
  get '/founder_message' => 'pages#show', :defaults => { :id => '22' }
  get '/high_quality_education' => 'pages#show', :defaults => { :id => '23' }
  get '/right_and_responsibility' => 'pages#show', :defaults => { :id => '24' }
  
  #our campus
  get '/facilities' => 'pages#show', :defaults => { :id => '18' }
  get '/our_staff' => 'pages#show', :defaults => { :id => '19' }
  get '/head_of_school_welcome' => 'pages#show', :defaults => { :id => '17' }
  
  #curriculum
  get '/pre_school' => 'pages#show', :defaults => { :id => '15' }
  get '/primary_school' => 'pages#show', :defaults => { :id => '16' }
  
  #programs
  get '/language_support' => 'pages#show', :defaults => { :id => '5' }
  get '/learning_support_for_special_need' => 'pages#show', :defaults => { :id => '6' }
  get '/student_welfare_program' => 'pages#show', :defaults => { :id => '7' }
  get '/excursion_or_fieldtrip' => 'pages#show', :defaults => { :id => '8' }
  get '/extracurricular_activity' => 'pages#show', :defaults => { :id => '9' }
  get '/anti_bullying_program' => 'pages#show', :defaults => { :id => '10' }
  get '/quran' => 'pages#show', :defaults => { :id => '12' }
  get '/akhlakul_karimah' => 'pages#show', :defaults => { :id => '13' }
  get '/sholat_dan_doa' => 'pages#show', :defaults => { :id => '14' }
     
  #employment
  get '/employment' => 'employments#index'
  
  #contact us 
  get "/contact" => "messages#new"
  #get '/riska_new' => 'messages#new'
  #match "/helpcenter" => "forums#index", :via => :get, :as => :forums
  #match "/contact" => "messages#new", :via => :get, :as => :contact
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
