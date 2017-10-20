class Dish < ApplicationRecord
  belongs_to :restaurant
  belongs_to :category

  has_many :recipes
  has_many :ingredients, -> { order(name: :asc) },  through: :recipes
end
