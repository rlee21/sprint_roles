Rails.application.routes.draw do
  resources :users do
    collection do
      post :roles
    end
  end
end
