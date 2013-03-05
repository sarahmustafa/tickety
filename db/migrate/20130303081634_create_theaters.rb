class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.integer :cinema_id
      t.integer :theater_number

      t.timestamps
    end
  end
end
