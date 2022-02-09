Rails.application.routes.draw do
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  root 'admin#home'
  get 'admin' => 'admin#home'
  devise_scope :admin do
    get 'admins/sign_out' => 'devise/sessions#destroy'
    get 'admins/edit' => 'devise/registrations#edit'
    get 'admins/sign_in' => 'devise/sessions#new'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
