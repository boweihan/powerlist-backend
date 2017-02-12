class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :user
  has_one :user
end
