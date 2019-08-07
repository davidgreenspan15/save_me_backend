class User < ApplicationRecord
  has_many :transactions
  has_many :categories, through: :transactions
  validates :name, :username, :password, :stock_level, presence: true
  has_secure_password
end
