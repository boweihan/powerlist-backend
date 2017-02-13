class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :start, :end, :url, :category, :completed, :order, :category_id
  has_one :category
end
