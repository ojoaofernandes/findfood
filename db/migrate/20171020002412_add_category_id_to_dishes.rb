class AddCategoryIdToDishes < ActiveRecord::Migration[5.1]
  def change
    add_column :dishes, :category_id, :integer
  end
end
