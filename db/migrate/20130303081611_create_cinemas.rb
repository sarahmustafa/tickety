class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
