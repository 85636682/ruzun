class CreateUserLockers < ActiveRecord::Migration[5.0]
  def change
    create_table :user_lockers do |t|
      t.integer :user_id
      t.integer :locker_id
      t.boolean :used, default: true
      t.datetime :returned_at

      t.timestamps
    end
  end
end
