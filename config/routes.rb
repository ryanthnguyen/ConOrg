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



  get 'users', to: 'users#index', as: 'users'
  get 'user/new', to: 'user#new', as: 'new_user'
  post 'users', to: 'users#create'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  #get 'users/:user_id/appraisals/new', to: 'appraisals#new', as: 'new_appraisal'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'
  put 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'
  get 'users/:id/home', to: 'users#home', as: 'user_home'


  get 'admins', to: 'admins#index', as: 'admins'
  get 'admin/new', to: 'admin#new', as: 'new_admin'
  post 'admins', to: 'admins#create'
  get 'admins/:id/edit', to: 'admins#edit', as: 'edit_admin'
  #get 'admins/:admin_id/appraisals/new', to: 'appraisals#new', as: 'new_appraisal'
  get 'admins/:id', to: 'admins#show', as: 'admin'
  patch 'admins/:id', to: 'admins#update'
  put 'admins/:id', to: 'admins#update'
  delete 'admins/:id', to: 'admins#destroy'
  get 'admins/:id/home', to: 'admins#home', as: 'admin_home'




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
