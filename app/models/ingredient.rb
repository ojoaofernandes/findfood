class Ingredient < ApplicationRecord
  has_many :recipes
  has_many :dishes, through: :recipes

  validates_presence_of :name

  scope :all_ordered, -> { order :name}
end
