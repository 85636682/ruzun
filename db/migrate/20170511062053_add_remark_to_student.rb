class AddRemarkToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :remark, :string
  end
end
