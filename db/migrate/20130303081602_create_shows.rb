class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.time :show_time
      t.date :show_date
      t.string :show_type
      t.integer :theater_id
      t.integer :cinema_id

      t.timestamps
    end
  end
end
