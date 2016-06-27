class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo
      t.string :province
      t.string :city
      t.string :district
      t.string :sign
      t.integer :user_id

      t.timestamps null: false
    end

    add_column :users, :teams_count, :integer
  end
end
