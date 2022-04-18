Rails.application.routes.draw do
  get 'dashboard/index'
  resources :reviews
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :tags
  resources :cafes
  resources :users, except: [:create, :destroy, :show]
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
 # cancelar edición del current_user sin recargar página
  get 'users/:id/cancel', to: 'users#cancel_editing', as: 'cancel'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
