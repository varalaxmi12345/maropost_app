Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :books
  get 'dashboard/welcome'
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home/index"
end
