class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :start, :end, :url, :category, :allDay, :completed, :order
  has_one :user
end
