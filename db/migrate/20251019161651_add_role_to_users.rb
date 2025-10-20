class AddRoleToUsers < ActiveRecord::Migration[7.1]
  def change
    # Add the role column, and set the default value to 0
    add_column :users, :role, :integer, default: 0
  end
end
