class AddDefaultToSeat < ActiveRecord::Migration
  def change
  change_column :seats, :is_taken, :boolean, :default => false
  end
end
