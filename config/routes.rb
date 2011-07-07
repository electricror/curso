Curso::Application.routes.draw do

  #get "dashboard/index"

  devise_for :admins
  devise_for :users

  resources :trainings
  resources :instructors


  root :to => "pages#index"

  namespace :admin do
    root :to => "dashboard#index"
    resources :trainings
    resources :instructors
  end


end

