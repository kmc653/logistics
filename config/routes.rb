Rails.application.routes.draw do
  root "admin/dashboard#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  # get '/check_in' => 'staffs#check_in'

  resources :trucks
  resources :trailers
  resources :clients, except: [:show]
  resources :staffs
  resources :missions do
    collection do
      get :search, to: "missions#search"
    end
  end
  resources :sessions, only: [:create]
  
  namespace :admin do
    get "dashboard" => "dashboard#index"
    resources :maintenances
    resources :trucks, except: [:index]
    resources :trailers, except: [:index]
  end
end
