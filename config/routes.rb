Rails.application.routes.draw do
  resources :tweets do
    member do
      get :heart
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweets#index"
end
