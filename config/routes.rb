Rails.application.routes.draw do
  devise_for :usuarios
  resources :productos, param: :id_producto
  resources :tipos,param: :id_tipo
  resources :rubros,param: :id_rubro
  resources :marcas,param: :id_marca
  root 'productos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
