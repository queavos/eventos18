Rails.application.routes.draw do
  get 'roles/index'
  get 'roles/new'
  post 'roles/create'
  get 'roles/:id/edit', to: 'roles#edit', as: 'roles_edit'
  patch 'roles/:id/update',  to: 'roles#update', as: 'roles_update'
  delete 'roles/:id/destroy',to: 'roles#destroy', as: 'roles_delete'
  

  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
