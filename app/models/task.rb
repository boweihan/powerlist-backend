class Task < ApplicationRecord
  belongs_to :category, optional: true # don't force category to be a property
end
