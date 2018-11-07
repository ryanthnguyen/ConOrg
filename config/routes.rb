Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get 'home', to: 'pages#home', as: 'home'
  get 'eventinfo', to: 'pages#eventinfo', as: 'eventinfo'
  # these may need changing as models come into play
  get 'userauth', to: 'pages#userauth', as: 'userauth'
  get 'schedule', to: 'pages#schedule', as: 'schedule'
end
