class TransactionSerializer < ActiveModel::Serializer
 attributes :id, :kind, :description, :price, :frequency, :date
 belongs_to :user, include_nested_associations: true
 belongs_to :category, include_nested_associations: true
end
