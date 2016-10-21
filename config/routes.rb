Rails.application.routes.draw do
  devise_for :users 
  resources :contacts, :only => [:show], :defaults => { :format => 'json' }
  root "contacts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
