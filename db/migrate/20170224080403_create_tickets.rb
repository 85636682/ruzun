class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.decimal :price
      t.integer :sport_field_id

      t.timestamps
    end
  end
end
