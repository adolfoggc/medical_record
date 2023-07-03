Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  
  
  authenticate :user do
    resources :patients
    resources :medications
    resources :active_ingredients
    resources :medication_active_ingredients
    
    root 'dashboard#home'
  end

  authenticated :user do
    get '/', to: 'dashboard#home', as: 'auth_home'
  end

end
