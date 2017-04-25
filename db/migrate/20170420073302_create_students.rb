class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.integer :user_id
      t.string  :name
      t.string  :avatar
      t.integer :height
      t.string  :phone
      t.integer :status
      t.integer :age
      t.integer :lesson_id

      t.timestamps
    end
  end
end
