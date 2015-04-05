class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.float :weight
      t.float :average_rating

      t.timestamps null: false
    end
  end
end
