Rails.application.routes.draw do
  root to: "users#roles"

  resources :users do
    collection do
      post :roles
    end
  end
end
