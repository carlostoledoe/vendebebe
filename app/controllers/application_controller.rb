class ApplicationController < ActionController::Base
  before_action :initialize_cart

  def permisos_sobre_marcas?
    if user_signed_in?
      if !current_user.admin?
        redirect_to brands_path, notice: "Debes ser administrador para realizar acciones sobre las marcas"
      end
    else
      redirect_to brands_path, notice: "No tienes permisos para esta acción"
    end
  end  

  def permisos_sobre_articulos?
    if !user_signed_in?
      redirect_to articles_path, notice: "No tienes permisos para esta acción"
    else 
      @uu = User.find(current_user.id)
      if @uu.rol == 1
      else
        if @article.user_id == current_user.id
        else
          redirect_to articles_path, notice: "No puedes editar artículos que no son tuyos"
        end
      end
    end
  end

  def initialize_cart
    @cart ||= Cart.find_by(id: session[:cart_id])

    if @cart.nil?
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end
end
