class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :start, :end, :url, :category, :completed, :order
  has_one :category
end
