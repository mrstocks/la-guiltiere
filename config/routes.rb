Laguiltiere::Application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  

  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "contact_us/index"
  get "rooms", :controller => "rooms", :action => :index
    
  devise_for :users
  
  #namespace :admin do
  #  root "base#index"
  #  resources :users
  #end
  
end
