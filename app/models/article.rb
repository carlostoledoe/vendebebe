class Article < ApplicationRecord
  has_many :orderables
  has_many :carts, through: :orderables
  belongs_to :brand
  belongs_to :user
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags
  has_many :order_details, dependent: :destroy
  has_many :orders, through: :order_details
  has_one_attached :image
  has_many_attached :photos
  validate :validar_photos
  
  def total
    orderables.to_a.sum { |orderable| orderable.total }
  end

  private
  def validar_photos
    return if photos.count <= 4

    errors.add(:mensaje, ": Solo puedes subir 4 fotos adicionales")
  end

end
