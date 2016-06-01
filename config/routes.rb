Rails.application.routes.draw do

  root 'companies#index'

  resources :companies
  resources :departments
  resources :divisions
  resources :employees
  resources :jobs
  resources :roles
  resources :links
  resources :all

end
