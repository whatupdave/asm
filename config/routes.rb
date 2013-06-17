ASM::Application.routes.draw do

  root :to => 'home#index'
  get '/new' => 'ideas#new', :as => :new_idea

end
