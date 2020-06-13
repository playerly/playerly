Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
	
	get '*path', to: "application#fallback_index_html", constraints: ->(request) do
		!request.xhr? && request.format.html?
	end

	#config/routes.rb
	post 'authenticate', to: 'authentication#authenticate'
end
