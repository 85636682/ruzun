class AddFoulsToTechstat < ActiveRecord::Migration
  def change
    add_column :techstats, :fouls, :integer,   default: 0
    add_column :techstats, :to, :integer,   default: 0
  end
end
