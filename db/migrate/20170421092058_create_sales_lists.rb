class CreateSalesLists < ActiveRecord::Migration[5.0]
  def change
    create_table :sales_lists do |t|
      t.string :sn

      t.timestamps
    end
  end
end
