Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :create, :new] do
    member do
      resources :doses, only: [:index, :new, :create, :destroy]
    end
  end
end
