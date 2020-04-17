Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :charities, only: [:index, :show, :create, :update, :delete]
end
