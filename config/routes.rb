Rails.application.routes.draw do
  root "articles#index"

  resources :articles do #enrutamiento que genera todas las rutas
    resources :comments
  end
end



