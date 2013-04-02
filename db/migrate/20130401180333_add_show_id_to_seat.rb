class AddShowIdToSeat < ActiveRecord::Migration
  def change
    add_column :seats, :show_id, :integer
  end
end
