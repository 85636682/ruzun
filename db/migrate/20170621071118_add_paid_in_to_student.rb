class AddPaidInToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :paid_in, :decimal, default: 0.0
  end
end
