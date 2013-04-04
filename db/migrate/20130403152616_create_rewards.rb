class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :reward_title
      t.integer :reward_points

      t.timestamps
    end
  end
end
