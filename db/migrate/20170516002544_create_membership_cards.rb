class CreateMembershipCards < ActiveRecord::Migration[5.0]
  def change
    create_table :membership_cards do |t|
      t.string :name
      t.text :summary
      t.integer :fee

      t.timestamps
    end
  end
end
