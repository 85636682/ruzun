class CreateDaylines < ActiveRecord::Migration[5.0]
  def change
    create_table :daylines do |t|
      t.string :subject

      t.timestamps
    end
    add_column :students, :dayline_id, :integer
    add_column :daylines, :lesson_id, :integer
  end
end
