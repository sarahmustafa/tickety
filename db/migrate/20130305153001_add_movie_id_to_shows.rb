class AddMovieIdToShows < ActiveRecord::Migration
  def change
    add_column :shows, :movie_id, :integer
  end
end
