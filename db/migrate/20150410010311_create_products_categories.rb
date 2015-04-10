
class CreateProductsCategories < ActiveRecord::Migration
  def self.up
    # Create the association table
    create_table :products_categories, :id => false do |t|
      t.integer :product_id, :null => false
      t.integer :category_id, :null => false
    end

    # Add table index
    add_index :products_categories, [:product_id, :category_id], :unique => true

  end

  def self.down
    remove_index :products_categories, :column => [:product_id, :category_id]
    drop_table :products_categories
  end
end