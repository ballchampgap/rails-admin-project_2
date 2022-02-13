Rails.application.routes.draw do
  devise_for :admins, controllers: { sessions: 'admins/sessions', registrations: 'admins/registrations' }
  root 'admin#home'
  get '/admin' => 'admin#home'
  devise_scope :admin do
    get 'admins/sign_out' => 'devise/sessions#destroy'
    get 'admins/edit' => 'devise/registrations#edit'
    get 'admins/sign_in' => 'devise/sessions#new'
  
  end
get 'read' => 'admin#read'
get 'datainsert' => 'admin#datainsert'
get 'datainsert2' => 'admin#datainsert_2'
delete 'removedata' => 'admin#remove_data'
delete 'removedata2' => 'admin#remove_data2'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
