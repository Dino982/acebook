Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/pages/:page" => "pages#show"

  constraints Clearance::Constraints::SignedIn.new do
    resources :posts do
      resources :comments
    end
  end

  constraints Clearance::Constraints::SignedOut.new do
    get '/posts', to: redirect('/sign_in')
  end


end
