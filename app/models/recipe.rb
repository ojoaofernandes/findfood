class Recipe < ApplicationRecord
  belongs_to :plate
  belongs_to :ingredient
end
