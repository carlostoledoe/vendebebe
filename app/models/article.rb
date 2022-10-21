class Article < ApplicationRecord
  belongs_to :brand
  belongs_to :user
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags
  has_many :order_details, dependent: destroy
  has_many :ordes, through :order_details
end
