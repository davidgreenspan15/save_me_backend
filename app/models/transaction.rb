class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :kind, :description, :frequency, :price, :date, :category_id, :user_id, presence: true
end
