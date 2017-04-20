class AddAgeToSwimingLesson < ActiveRecord::Migration[5.0]
  def change
    add_column :swiming_lessons, :age, :integer
  end
end
