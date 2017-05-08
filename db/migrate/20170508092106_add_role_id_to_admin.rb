class AddRoleIdToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :role_id, :integer
    drop_table :admins_roles
  end
end
