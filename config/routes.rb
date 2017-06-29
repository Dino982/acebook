Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/pages/:page" => "pages#show"

  constraints Clearance::Constraints::SignedIn.new do
    resources :posts 
  end

  resources :posts do
    resources :comments
    resources :likes
  end
  
  get '/' => 'posts#index'
  
end
