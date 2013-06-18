ASM::Application.routes.draw do

  root :to => 'home#index'

  get   '/new' => 'ideas#new', :as => :new_idea
  post  '/ideas' => 'ideas#create', :as => :ideas
  get   '/ideas/:id' => 'ideas#show', :as => :idea
  patch '/ideas/:id' => 'ideas#update'

end
