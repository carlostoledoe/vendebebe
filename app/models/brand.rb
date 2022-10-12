class Brand < ApplicationRecord
  has_many :articles, dependent: :destroy
end
