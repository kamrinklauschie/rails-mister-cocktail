Rails.application.routes.draw do
  get 'dose/create'
  get 'dose/new'
  get 'dose/destroy'
  get 'cocktails/index'
  get 'cocktails/new'
  get 'cocktails/create'
  get 'cocktails/show'
  get 'cocktails/edit'
  get 'cocktails/update'
  get 'cocktails/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:create, :new, :destroy]
end
