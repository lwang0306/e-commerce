class CreateUsersProducts < ActiveRecord::Migration
  def change
    create_table :users_products do |t|
      t.integer :user_id, :null => false
      t.integer :product_id, :null => false
    end
  end

  def self.up
    create_table :users_products do |t|
      t.integer :user_id, :null => false
      t.integer :product_id, :null => false
    end

    add_index :users_products, [:client_id, :product_id], :unique => true

  end

  def self.down
    remove_index :users_products, :column => [:user_id, :product_id]
    drop_table :users_products
  end
end
