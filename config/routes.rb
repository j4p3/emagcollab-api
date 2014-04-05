LineOfLife::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  match '*all', to: 'application#cors', via: [:options]
  match 'submissions', to: 'submissions#create', via: [:post], defaults: { format: 'json' }
  get 'submissions/test', to: 'submissions#test'

  # Missing route catch-all
  match '*path', :to => 'application#routing_error', :via => :all, defaults: { format: 'json' }
end
