class Ingredient < ApplicationRecord
  has_many :recipes
  has_many :dishes, through: :recipes

  scope :all_ordered, -> { order :name}
end
