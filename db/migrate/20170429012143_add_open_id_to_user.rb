class AddOpenIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :open_id, :string
    add_column :users, :access_token, :string
    add_column :users, :refresh_token, :string
    add_column :users, :expires_in, :integer
  end
end
