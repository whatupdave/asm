ASM::Application.routes.draw do

  root :to => 'home#index'
  get '/new' => 'ideas#new', :as => :new_idea

  resources :products, path: '/', only: [:show] do
    resources :wips, only: [:index, :new, :show]
  end
end
