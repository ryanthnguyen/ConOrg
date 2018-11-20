Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get 'home', to: 'pages#home', as: 'home'
  get 'eventinfo', to: 'pages#eventinfo', as: 'eventinfo'
  # these may need changing as models come into play
  get 'userauth', to: 'pages#userauth', as: 'userauth'
  get 'hotels', to: 'pages#hotels', as: 'hotels'
  get 'gameinfo', to: 'pages#gameinfo', as: 'gameinfo'
  get 'pricinginformation', to: 'pages#pricinginformation', as: 'pricinginformation'
  get 'schedule', to: 'pages#schedule', as: 'schedule'
  get 'panelinfo', to: 'pages#panelinfo', as: 'panelinfo'
  get 'profilepage', to: 'pages#profilepage', as: 'profilepage'
  get 'dealerinfo', to: 'pages#dealerinfo', as: 'dealerinfo'
  get 'applications', to: 'pages#applications', as: 'applications'










  get 'registration_forms', to: 'registration_forms#index', as: 'registration_forms_index'
  post 'registration_forms', to: 'registration_forms#create', as: 'registration_forms'
  get 'registration_forms/:id/edit', to: 'registration_forms#edit', as: 'edit_registration_form'
  patch 'registration_forms/:id', to: 'registration_forms#update', as: 'registration_form'
  put 'registration_forms/:id', to: 'registration_forms#update'
  delete 'registration_forms/:id', to: 'registration_forms#destroy'
end
