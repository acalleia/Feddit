Rails.application.routes.draw do
  
  resources :forums do
    resources :posts
  end
end
