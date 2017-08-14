Rails.application.routes.draw do
  get '/pizzerias/new', to: 'pizzerias#new'
  post '/pizzerias', to: 'pizzerias#create', as: 'pizzerias'
  get '/pizzerias/:id', to: 'pizzerias#show', as: 'pizzeria'
  get '/pizzerias', to: 'pizzerias#index'
end
