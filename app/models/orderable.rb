class Orderable < ApplicationRecord
  belongs_to :article
  belongs_to :cart

  def total
    article.price * quantity
  end
  
end
