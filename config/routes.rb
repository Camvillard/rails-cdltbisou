Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  get '/about', to: 'pages#about'
  get '/contact', to: 'messages#new', as: 'new_message'
  post '/contact', to: 'messages#create'
  get '/styles', to: 'pages#styles'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
