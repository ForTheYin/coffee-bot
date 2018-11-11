Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/queued/:uuid', to: 'transition#queued'
  get '/temperatures/:uuid', to: 'transition#temperatures'

  post '/play', to: 'transition#play'
  post '/schedule', to: 'transition#schedule'
  post '/perform/:uuid', to: 'transition#perform'
  post '/brew/:uuid', to: 'transition#brew'
  post '/switch_brew/:uuid', to: 'transition#switch_brew'
end
