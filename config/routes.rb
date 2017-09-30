Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :posts do 
  	resources :comments
  end
  # Linea principal (que ya existía): resources :posts
  # Modificación: resources :posts do 
  #					resources :comments
  # 			  end
  #Lo que se hizo fue crear un sub-recurso. Nos gustaría crear un conjunto de rutas que sean post
  #seguidos por comentarios. Esto hace que al abrir un post, tambien hayan lasrutas de los comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
