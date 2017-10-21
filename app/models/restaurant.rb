class Restaurant < ApplicationRecord
  has_many :dishes

  validates_presence_of :name, :address, :phone

  scope :all_ordered, -> { order :name}
end
