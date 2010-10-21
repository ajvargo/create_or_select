CreateOrComplete::Application.routes.draw do
  resources :posts, :only => [:show, :new, :create]
end
