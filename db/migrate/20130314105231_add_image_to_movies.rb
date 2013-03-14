class AddImageToMovies < ActiveRecord::Migration
 def self.up
    add_attachment :movies, :movie_image
  end

  def self.down
    remove_attachment :movies, :movie_image
  end
end
