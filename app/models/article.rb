class Article < ApplicationRecord
  belongs_to :brand
  belongs_to :user
  has_and_belongs_to_many :tags
end
