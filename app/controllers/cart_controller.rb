class CartController < ApplicationController

  def add
    @article = Article.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_orderable = @cart.orderables.find_by(article_id: @article.id)
    if current_orderable && quantity > 0
      current_orderable.update(quantity:)
    elsif quantity <= 0 
      current_orderable.destroy
    else 
      @cart.orderables.create(article: @article, quantity:)
    end
    redirect_to @cart, notice: "Producto agregado a carrito" #No funciona, revisar
  end

  def remove
    Orderable.find_by(id: params[:id]).destroy
    redirect_to @cart, notice: "Producto eliminado del carrito" #No funciona, revisar

  end
end
