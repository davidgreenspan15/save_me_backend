class TransactionSerializer < ActiveModel::Serializer
 attributes :id, :kind, :description, :price, :frequency, :date, :created_at
 belongs_to :user, include_nested_associations: true
 belongs_to :category, include_nested_associations: true
end
