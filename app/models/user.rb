class User < ApplicationRecord
  has_many :transactions
  has_many :categories, through: :transactions
  validates :name, :username, :stock_level, presence: true
  has_secure_password
end
