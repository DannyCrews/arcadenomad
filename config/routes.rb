Rails.application.routes.draw do

  namespace :admin do
    root 'index#index'
    resources :categories
    resources :index
  end

  resources :about

  match '/contact', to: 'about#new', via: 'get', as: 'contact_new'
  match '/contact', to: 'about#create', via: 'post', as: 'contact'

  resources :games

  resources :locations

  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
