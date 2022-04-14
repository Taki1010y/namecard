Rails.application.routes.draw do
  root :to => "web#index"
  

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords',
    :confirmations => 'users/confirmations'
  }

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    delete "logout", :to => "users/sessions#destroy"
  end

  devise_for :cimpanles, :controllers => {
    :registrations => 'cimpanles/registrations',
    :sessions => 'cimpanles/sessions',
    :passwords => 'cimpanles/passwords',
    :confirmations => 'cimpanles/confirmations',
  }

  devise_scope :cimpanles do
    get "signup_cimpanles", :to => "cimpanles/registrations#new"
    get "login_cimpanles", :to => "cimpanles/sessions#new"
    delete "logout_cimpanles", :to => "cimpanles/sessions#destroy"
  end
  
  resources :products

end
