class AddEnabledToDayline < ActiveRecord::Migration[5.0]
  def change
    add_column :daylines, :enabled, :boolean, defautl: true
    add_column :timelines, :enabled, :boolean, defautl: true
  end
end
