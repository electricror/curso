Curso::Application.routes.draw do

  #get "dashboard/index"

  devise_for :admins
  devise_for :users

  resources :trainings, :only => [:index,:show], :path => "treinamentos"
  resources :instructors, :only => [:index,:show], :path => "professores"
  resources :inquiries, :only => [:new, :create], :path => "contact"

  root :to => "pages#index"

  namespace :admin do
    root :to => "dashboard#index"
    resources :trainings
    resources :instructors
  end


end

