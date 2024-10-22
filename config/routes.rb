Rails.application.routes.draw do
	get 'admin/integrations', to: 'page#integrations'
	get 'admin/team', to: 'page#team'
	get 'admin/billing', to: 'page#billing'
	get 'admin/notifications', to: 'page#notifications'
	get 'admin/settings', to: 'page#settings'
	get 'admin/activity', to: 'page#activity'
	get 'admin/profile', to: 'page#profile'
	get 'admin/people', to: 'page#people'
	get 'admin/calendar', to: 'page#calendar'
	get 'admin/assignments', to: 'page#assignments'
	get 'admin/message', to: 'page#message'
	get 'admin/messages', to: 'page#messages'
	get 'admin/project', to: 'page#project'
	get 'admin/projects', to: 'page#projects'
	get 'admin/dashboard', to: 'page#dashboard'
	get 'pricing', to: 'page#pricing'
	get 'about', to: 'page#about'
	
  if Rails.env.development? || Rails.env.test?
    mount Railsui::Engine, at: "/railsui"
  end

  root "page#dashboard"

	resources :jobs

  devise_for :users
 
end
