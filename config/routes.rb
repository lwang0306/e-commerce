Rails.application.routes.draw do
  devise_for :admins, :controllers => {:registrations => "my_devise/registrations", :sessions => "my_devise/sessions"  }

  resources :welcomes
  devise_for :users
  resources :categories
  resources :products
  resources :blogs
  resources :products



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcomes#index'
  # Example of regular route:
  # get '/admin', to: 'products#admin'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  # 
  # Example resource route with options:
    resources :welcomes do
      collection do
        get '/admin/page' => 'welcomes#admin_page'
      end
    end


  resources :products do
    collection do
      get '/admin/branch' => 'products#admin'
    end
  end

  resources :blogs do
    collection do
      get '/admin/branch' => 'blogs#admin'
    end
  end

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
  #     #   end
end
