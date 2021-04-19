Rails.application.routes.draw do
  resources :guests do
    collection {post :import }
  end
  
  post "confirmation_email" => "guests#confirmation_email"
  
  root :to => "guests#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
