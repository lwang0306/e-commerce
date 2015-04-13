class AddIsAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_Admin, :string
  end
end
