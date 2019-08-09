class UserSerializer < ActiveModel::Serializer
 attributes :id, :username, :name, :stock_level
 has_many :transactions, include_nested_associations: true
 has_many :categories, include_nested_associations: true
end
