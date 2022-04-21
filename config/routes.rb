Rails.application.routes.draw do
  root :to => "web#index"
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords',
    :confirmations => 'users/confirmations',
    :creations => 'users/creations'
  }

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "verify", :to => "users/registrations#verify"
    get "login", :to => "users/sessions#new"
    delete "logout", :to => "users/sessions#destroy"
    get "creation_screen", :to => "users/creations#new"
  end

  devise_for :companies, :controllers => {
    :registrations => 'companies/registrations',
    :sessions => 'companies/sessions',
    :passwords => 'companies/passwords',
    :confirmations => 'companies/confirmations',
  }

  devise_scope :company do
    get "signup_company", :to => "companies/registrations#new"
    get "verify_company", :to => "companies/registrations#verify"
    get "login_company", :to => "companies/sessions#new"
    delete "logout_company", :to => "companies/sessions#destroy"
    get "creation_screen_company", :to => "companies/creations#new"
  end

end
