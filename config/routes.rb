Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  constraints Clearance::Constraints::SignedIn.new do
    resources :posts
  end

  # constraints Clearance::Constraints::SignedOut.new do
  #   root to: "sign_in"
  # end

  resources :posts do
    resources :comments
    resources :likes
  end

  delete '/posts/:post_id/likes' => 'likes#destroy'
  get '/' => 'posts#index'

  # resources :users do
  #   resources :likes
  # end
end
