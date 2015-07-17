class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # before_filter :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) << :
  # end

  # protect_from_forgery with: :exception

  layout :layout

  private

  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "devs_layout"
    else
      "application"
    end
  end

end
