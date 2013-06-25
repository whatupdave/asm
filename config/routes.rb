ASM::Application.routes.draw do

  root :to => 'home#index'

  get   '/help/manual' => 'help#manual', :as => :manual

  get   '/new' => 'ideas#new', :as => :new_idea
  get   '/leaderboard' => 'ideas#index', :as => :ideas

  resources :ideas, only: [:show, :create, :edit, :update] do
    resources :presales, only: [:new, :create]
  end

  get   '/batches/:id' => 'batches#show', :as => :batch

  devise_for :users, :skip => :all

  as :user do
    get    '/login' => 'users/sessions#new', :as => :new_user_session
    post   '/login' => 'users/sessions#create'
    get    '/user' => 'users/sessions#show', :as => :user_session
    delete '/logout' => 'users/sessions#destroy', :as => :destroy_user_session

    get    '/signup' => 'users/registrations#new', :as => :new_user_registration
    post   '/signup' => 'users/registrations#create', :as => :user_registration
    get    '/settings' => 'users/registrations#edit', :as => :edit_user_registration
    patch  '/settings' => 'users/registrations#update'
  end

  resources :products, path: '/', only: [:show] do
    resources :wips, only: [:index, :new, :show]
  end
end
