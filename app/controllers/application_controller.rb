class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:first_name,
                                                 :middle_name,
                                                 :last_name,
                                                 :address1,
                                                 :address2,
                                                 :city,
                                                 :state,
                                                 :zip,
                                                 :email,
                                                 :contact_number,
                                                 :gender,
                                                 :shirt_size,
                                                 :date_of_birth,
                                                 :password,
                                                 :password_confirmation]
  end

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end
end
