class AddProviderToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid,      :string
    add_column :users, :nickname, :string
    add_column :users, :sex,      :integer
  end
end
