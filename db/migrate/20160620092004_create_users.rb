class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :mobile
      t.string :name
      t.date   :birthday
      t.integer :height
      t.integer :weight
      t.string :position
      t.string :avatar
      t.string :province
      t.string :city
      t.string :district

      t.timestamps null: false
    end
  end
end
