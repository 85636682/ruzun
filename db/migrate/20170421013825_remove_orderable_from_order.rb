class RemoveOrderableFromOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :orderable_type
    remove_column :orders, :orderable_id
    remove_column :orders, :amount
  end
end
