class Dish < ApplicationRecord
  belongs_to :restaurant
  belongs_to :category

  has_many :recipes
  has_many :ingredients, -> { order(name: :asc) },  through: :recipes

  validates_presence_of :name, :price, :prepare_time

  scope :all_ordered, -> { order :name}
end
