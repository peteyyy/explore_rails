class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!
	before_action :set_globals


	def set_globals
		@places ||= Place.all.first(50)
	end

	protected

	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:state])
  	end
end
