class ApplicationController < ActionController::Base

  protected
  def tengo_permisos?
    if !current_user.admin?
      redirect_to brands_path, notice: "No tienes permisos para esta acción"
    end
  end
end
