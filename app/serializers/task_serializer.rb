class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :tip, :start, :end, :url, :category, :overdue, :backgroundColor, :order, :category_id
  has_one :category
end
