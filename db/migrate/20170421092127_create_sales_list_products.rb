class CreateSalesListProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :sales_list_products do |t|
      t.integer :sales_list_id
      t.integer :product_id

      t.timestamps
    end
  end
end
