class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :subject
      t.decimal :price
      t.text :summary

      t.timestamps
    end
  end
end
