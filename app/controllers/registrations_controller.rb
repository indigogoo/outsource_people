class RegistrationsController < Devise::RegistrationsController
	before_filter :configure_permitted_parameters, :only => [:create, :update]

	protected

		def configure_permitted_parameters

			devise_parameter_sanitizer.for(:sign_up) { |u| u.permit( 
				:first_name, 
				:email, 
				:phone_number
			)}

			devise_parameter_sanitizer.for(:account_update) { |u| u.permit(
				:email, 
				:password, 
				:password_confirmation, 
				:current_password, 
				:first_name, 
				:last_name 
			)}
		end
end