Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'messages#new', as: 'new_message'
  post '/contact', to: 'messages#create'
  get '/merci', to: 'messages#thanks', as: 'thanks'
  get '/styles', to: 'pages#styles'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
