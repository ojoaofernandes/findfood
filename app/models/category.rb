class Category < ApplicationRecord
  has_many :dishes

  validates_presence_of :name

  scope :all_ordered, -> { order :name}
end
