class RenameSwimingLesson < ActiveRecord::Migration[5.0]
  def change
    rename_table :swiming_lessons, :students
  end
end
