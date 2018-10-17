Rails.application.routes.draw do
  #rutas para speaker
  get 'speaker/index'
  get 'speaker/new'
  post 'speaker/create'
  get 'speaker/:id/edit', to: 'speaker#edit', as: 'speaker_edit'
  patch 'speaker/:id/edit', to: 'speaker#update', as: 'speaker_update'
  delete 'speaker/:id', to: 'speaker#destroy', as: 'speaker_delete'
  #rutas para eventos
  get 'event/index'
  get 'event/new'
  post 'event/create'
  get 'event/:id/edit', to: 'event#edit', as: 'event_edit'
  patch 'event/:id/edit', to: 'event#update', as: 'event_update'
  delete 'event/:id', to: 'event#destroy', as: 'event_delete'
  #rutas para roles
  get 'roles/index'
  get 'roles/new'
  post 'roles/create'
  get 'roles/:id/edit', to: 'roles#edit', as: 'roles_edit'
  patch 'roles/:id/update',  to: 'roles#update', as: 'roles_update'
  delete 'roles/:id/destroy',to: 'roles#destroy', as: 'roles_delete'
  #rutas para noticias
  get 'news/index'
  get 'news/new'
  post 'news/create'
  get 'news/:id/edit', to: 'news#edit', as: 'news_edit'
  patch 'news/:id/update',  to: 'news#update', as: 'news_update'
  delete 'news/:id/destroy',to: 'news#destroy', as: 'news_delete'
  

  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
