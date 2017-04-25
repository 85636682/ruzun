class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :logo
      t.text :constitution
      t.text :constitution_html
      t.boolean :locked, default: false

      t.timestamps null: false
    end
  end
end
