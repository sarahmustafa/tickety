class AddDefaultRewardToUser < ActiveRecord::Migration
  def change
change_column :users, :reward_points, :integer, :default => 5
  end
end


