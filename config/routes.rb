Laguiltiere::Application.routes.draw do
  
  get '/rates(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  

  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "contact_us/index"
  post "contact_us", :controller => "contact_us", :action => :create
  get "rooms", :controller => "rooms", :action => :index
  get "bookings", :controller => "booking", :action => :index    
  post "bookings", :controller => "booking", :action => :create    
  get "prices", :controller => "prices", :action => :index  

  devise_for :users
  
  #namespace :admin do
  #  root "base#index"
  #  resources :users
  #end
  
end
