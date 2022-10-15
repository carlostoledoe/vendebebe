class User < ApplicationRecord
  has_many :articles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  enum rol: [:vendedor, :admin]

  after_initialize do
    if self.new_record?
      self.rol ||= :vendedor
    end
  end

end
