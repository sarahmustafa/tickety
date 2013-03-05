class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :duration
      t.string :summary
      t.string :genre
      t.string :actors

      t.timestamps
    end
  end
end
