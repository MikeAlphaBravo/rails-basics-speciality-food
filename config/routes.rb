Rails.application.routes.draw do
  resources :products do
    resources :comments
  end
  root 'homepage#index'
end
