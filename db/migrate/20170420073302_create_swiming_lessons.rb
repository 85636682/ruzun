class CreateSwimingLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :swiming_lessons do |t|
      t.integer :user_id
      t.string :name
      t.string :avatar
      t.integer :height
      t.string :phone
      t.integer :status

      t.timestamps
    end
  end
end
