class CreateCrowdfundings < ActiveRecord::Migration[5.0]
  def change
    create_table :crowdfundings do |t|
      t.string :subject
      t.decimal :fee
      t.integer :user_id
      t.text :desc

      t.timestamps
    end
  end
end
