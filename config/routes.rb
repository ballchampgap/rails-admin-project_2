Rails.application.routes.draw do
  get 'showdatas/index' 
  get 'showdatas/index2' => 'showdatas#index2'
  get '/pest/:id', to: 'showdatas#showpest'
  get '/epidemic/:id', to: 'showdatas#showepidemic'
  get 'plantecopests/index'
  get 'plantecoepidemics/index'
  get 'datapests/index'
  resources :complain_sections
  resources :complains
  resources :dataepidemics
  resources :datapests
  resources :plantecoepidemics
  resources :plantecopests
  # resources :complain
  devise_for :admins, controllers: { sessions: 'admins/sessions', registrations: 'admins/registrations', passwords: 'admins/passwords', invitations: 'admins/invitations' }
  root 'admin#home'
  get '/admin' => 'admin#home'
  devise_scope :admin do
    get 'admins/sign_out' => 'devise/sessions#destroy'
    get 'admins/edit' => 'devise/registrations#edit'
    get 'admins/sign_in' => 'devise/sessions#new'
    get 'admins/invitations' => 'devise/invitations#new'
    get 'admins/invitations' => 'devise/invitations#edit'
    
  end
get 'read' => 'admin#read'
get 'manage_data' => 'admin#manage_data'
get 'datainsert' => 'admin#datainsert'
get 'datainsert2' => 'admin#datainsert_2'
delete 'removedata' => 'admin#remove_data'
delete 'removedata2' => 'admin#remove_data2'
get '/epidemic_info/:id', to: 'admin#data_info_epidemic'
get '/pest_info/:id', to: 'admin#data_info_pest'
get 'admin_list' => 'admin#admin_list'
delete 'removeadmin' => 'admin#remove_admin'
get 'admin/invitation/accept' => 'invitations#edit'
get 'addrole' => 'admin#addrole'
get 'removerole' => 'admin#removerole'
# get 'logoutadmin' => 'admin/sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  'resources :admin'
end
