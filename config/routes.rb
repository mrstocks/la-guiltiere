Laguiltiere::Application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get '/rates(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  root "pages#home"    

  # About section 
  get "about_the_house", to: 'pages#about_the_house', as: "about_the_house"
  get "about_the_gardens", to: 'pages#about_the_garden', as: "about_the_garden"
  get "about_the_caravans", to: 'pages#about_the_caravan', as: "about_the_caravan"

  get "home", to: "pages#home", as: "home"

  get "inside", to: "pages#inside", as: "inside"

  get "contact_us", :controller => "contact_us", :action => :index
  post "contact_us", :controller => "contact_us", :action => :create

  get "rooms", :controller => "rooms", :action => :index

  get "inquiries", :controller => "booking", :action => :index    

  post "inquiries", :controller => "booking", :action => :create    

  get "prices", :controller => "prices", :action => :index  

  devise_for :users
  
  #namespace :admin do
  #  root "base#index"
  #  resources :users
  #end
  
end
