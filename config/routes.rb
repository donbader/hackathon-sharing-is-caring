Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'charities', to: 'charities#index'
  get '/charities/new', to: 'charities#new'
  get '/charities/:id', to: 'charities#show'

  post '/charities/new', to: 'charities#create'
  patch '/charities/:id', to: 'charities#update'
  post '/charities/delete', to: 'charities#delete'
end
