Rails.application.routes.draw do

  root 'index#index'

  resources :certificatetypes

  resources :csrtemplates
  
  resources :keypairs do
    collection do 
      get 'autogenerate'
    end
    member do
      get 'export_private'
      get 'export_public'
    end
  end

  resources :csrs do
    collection do
      post 'autogenerate'
      post 'templatefiller'
    end
    member do
      get 'export'
    end
  end

  resources :certificates do
    member do
      get 'export'
    end
  end

  resources :keystores

  resources :settings, :except => :show
  devise_for :users, :skip => [:registrations]
    as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
    put 'users' => 'devise/registrations#update', :as => 'user_registration'            
  end
  resources :users 

  # a route for gem 'cookies_eu'
  get 'cookies' => 'cookies#index'
  
  # show letter_opener link in top nav in dev and test
  unless Rails.env.production?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
