Rails.application.routes.draw do
  ActiveAdmin.routes(self)
	root "posts#index"
  resources :posts

  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
