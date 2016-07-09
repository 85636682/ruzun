class CreateTechstats < ActiveRecord::Migration
  def change
    create_table :techstats do |t|
      t.integer :played_id
      t.integer :user_id
      t.integer :pts,   default: 0
      t.integer :ast,   default: 0
      t.integer :stl,   default: 0
      t.integer :blk,   default: 0
      t.integer :off,   default: 0
      t.integer :reb,   default: 0
      t.integer :pm3,   default: 0
      t.integer :pm3_a, default: 0
      t.integer :ftm,   default: 0
      t.integer :ftm_a, default: 0
      t.integer :fgm,   default: 0
      t.integer :fgm_a, default: 0

      t.timestamps null: false
    end
  end
end
