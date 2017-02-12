class Category < ApplicationRecord
  belongs_to :user, optional: true # don't force user to be a property
  has_many :tasks
end
