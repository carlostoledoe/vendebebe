class Article < ApplicationRecord
  belongs_to :brand
  belongs_to :user
end
