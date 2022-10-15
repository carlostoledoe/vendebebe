class ApplicationController < ActionController::Base

  def tengo_permisos?
    if user_signed_in?
      if !current_user.admin?
        redirect_to brands_path, notice: "Debes ser administrador"
      end
    else
      redirect_to brands_path, notice: "No tienes permisos para esta acción"
    end
  end  

  def permisos?
    if !user_signed_in?
      redirect_to articles_path, notice: "No tienes permisos para esta acción"
    else 
      if @article.user_id == current_user.id
      else
        redirect_to articles_path, notice: "No eres el usuario de este artículo"
      end
    end
  end
end
