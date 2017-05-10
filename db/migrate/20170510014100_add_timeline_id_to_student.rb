class AddTimelineIdToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :timeline_id, :integer
  end
end
