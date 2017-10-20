class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :prepare_time
      t.decimal :price

      t.timestamps
    end
  end
end
