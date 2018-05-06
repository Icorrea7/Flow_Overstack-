class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def require_user
    unless current_user
      flash[:danger] = "Necesitas iniciar sesión antes de realizar esta acción!"
      redirect_to '/users/sign_in'
    end
  end
end
