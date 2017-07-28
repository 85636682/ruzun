class AddEnabledToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :enabled, :boolean, default: true
  end
end
