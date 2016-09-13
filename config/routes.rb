Rails.application.routes.draw do
  root 'posts#index'
  
  devise_for :users
	  
  resources :users do  
    resources :comments
  	resources :posts 
	    member do
	      get 'like'
	    end
	end
	 
  # For details	 on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
