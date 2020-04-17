class Observation < ApplicationRecord
  belongs_to :user
  belongs_to :mushroom

  validates :mushroom
end
