class User < ApplicationRecord
  has_many :transactions, :dependent => :delete_all
  has_many :categories, through: :transactions, :dependent => :delete_all
  validates :name, :username, :stock_level, presence: true
  has_secure_password
end
