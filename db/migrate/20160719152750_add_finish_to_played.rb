class AddFinishToPlayed < ActiveRecord::Migration
  def change
    add_column :playeds, :finish, :boolean, default: false
  end
end
