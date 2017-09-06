Rails.application.routes.draw do
  
  resources :forums do
    resources :posts do
      resources :comments
    end
  end
end
