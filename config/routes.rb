Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)

	scope '/api' do
		resources :approval_types
		resources :genders
		resources :group_types
		resources :groups
		resources :memberships
		resources :roles
		resources :skill_levels
		resources :sports
		resources :user_sports
		resources :users
	end
	
	get '*path', to: "application#fallback_index_html", constraints: ->(request) do
		!request.xhr? && request.format.html?
	end
end
