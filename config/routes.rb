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




  get 'gm_form1s', to: 'gm_form1s#index', as: 'gm_form1s_index'
  post 'gm_form1s', to: 'gm_form1s#create', as: 'gm_form1s'
  get 'gm_form1s/:id/edit', to: 'gm_form1s#edit', as: 'edit_gm_form1'
  patch 'gm_form1s/:id', to: 'gm_form1s#update', as: 'gm_form1'
  put 'gm_form1s/:id', to: 'gm_form1s#update'
  delete 'gm_form1s/:id', to: 'gm_form1s#destroy'


  get 'gm_form2s', to: 'gm_form2s#index', as: 'gm_form2s_index'
  post 'gm_form2s', to: 'gm_form2s#create', as: 'gm_form2s'
  get 'gm_form2s/:id/edit', to: 'gm_form2s#edit', as: 'edit_gm_form2'
  patch 'gm_form2s/:id', to: 'gm_form2s#update', as: 'gm_form2'
  put 'gm_form2s/:id', to: 'gm_form2s#update'
  delete 'gm_form2s/:id', to: 'gm_form2s#destroy'
end
