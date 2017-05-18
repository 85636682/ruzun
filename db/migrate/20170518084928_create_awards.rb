class CreateAwards < ActiveRecord::Migration[5.0]
  def change
    create_table :awards do |t|
      t.string :subject
      t.text :code
      t.integer :rate

      t.timestamps
    end
  end
end
