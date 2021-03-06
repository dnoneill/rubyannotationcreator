Rails.application.routes.draw do
  devise_for :users
  get 'profile', to: 'profile#index'
  post 'profile/update', to: 'profile#update'
  
  mount Annotot::Engine => '/annotations'
  resources :displayannotations, path: '/listannotations', except: %i[new edit show] do
      collection do
          get 'search'
      end
  end
  root 'mirador#index'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
