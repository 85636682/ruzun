class CreateLuckyDraws < ActiveRecord::Migration[5.0]
  def change
    create_table :lucky_draws do |t|
      t.integer :user_id
      t.integer :award_id
      t.boolean :received,    default: false
      t.boolean :from_weixin, default: false
      t.date :from_weixin_at
      t.datetime :drawed_at

      t.timestamps
    end
  end
end
