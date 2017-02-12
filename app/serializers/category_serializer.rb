class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :users_id
  has_one :user
end
