class AddAdmincodeToWelcomes < ActiveRecord::Migration
  def change
    add_column :welcomes, :admincode, :string
  end
end
