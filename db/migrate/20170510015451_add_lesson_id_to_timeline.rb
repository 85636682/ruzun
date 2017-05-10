class AddLessonIdToTimeline < ActiveRecord::Migration[5.0]
  def change
    add_column :timelines, :lesson_id, :integer
  end
end
