Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :ingredients do
  #   resources :doses, only: [ :description ]
  # ends :doses
  resources :cocktails, only: [:index, :create, :new, :show] do
    resources :doses, only: [:new, :create]
  end
end
