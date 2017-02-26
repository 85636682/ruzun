class CreateSportFields < ActiveRecord::Migration[5.0]
  def change
    create_table :sport_fields do |t|
      t.string :name

      t.timestamps
    end
  end
end
