class Restaurant < ApplicationRecord
  has_many :dishes

  scope :all_ordered, -> { order :name}
end
