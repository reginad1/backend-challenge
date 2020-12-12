class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  skip_before_action :verify_authenticity_token
  protect_from_forgery prepend: true
  before_action :configure_sign_up_params, only: [:create]

  def create
    super
  end

  private

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute], :first_name, :last_name, :website)
  end

  def after_sign_up_path_for(resource)
    super(resource)
  end

end
