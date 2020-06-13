class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :authenticate_request
	attr_reader :current_user

	def fallback_index_html
		render :file => 'public/index.html'
	end
end
