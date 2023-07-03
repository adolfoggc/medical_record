Rails.application.routes.draw do
  resources :active_ingredients
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  
  
  authenticate :user do
    resources :patients
    
    root 'dashboard#home'
  end

  authenticated :user do
    get '/', to: 'dashboard#home', as: 'auth_home'
  end

end
