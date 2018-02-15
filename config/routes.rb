Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/search',  to: 'movies#search'
  get  '/results', to: 'movies#results'

  root 'movies#search'
end