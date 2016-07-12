class AddTechedToPlayed < ActiveRecord::Migration
  def change
    add_column :playeds, :teched, :boolean, :default => false
  end
end
