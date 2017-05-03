class AddSummaryToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :summary, :text
  end
end
