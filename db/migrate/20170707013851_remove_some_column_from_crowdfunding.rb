class RemoveSomeColumnFromCrowdfunding < ActiveRecord::Migration[5.0]
  def change
    rename_column :user_crowdfundings, :crowdfunding, :crowdfunding_id
    remove_column :crowdfundings, :user_id
  end
end
