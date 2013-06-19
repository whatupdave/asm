ASM::Application.routes.draw do

  root :to => 'home#index'

  get   '/new' => 'ideas#new', :as => :new_idea
  post  '/ideas' => 'ideas#create', :as => :ideas
  get   '/ideas/:id' => 'ideas#show', :as => :idea
  patch '/ideas/:id' => 'ideas#update'

  devise_for :users, :skip => :all

  as :user do
    get    '/login' => 'users/sessions#new', :as => :new_user_session
    post   '/login' => 'users/sessions#new', :as => :user_session
    delete '/logout' => 'users/sessions#destroy', :as => :destory_user_session

    get    '/signup' => 'users/registrations#new', :as => :new_user_registration
    post   '/signup' => 'users/registrations#create', :as => :user_registration
    get    '/settings' => 'users/registrations#edit', :as => :edit_user_registration
    patch  '/settings' => 'users/registrations#update'
  end

end
