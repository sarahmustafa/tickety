class Show < ActiveRecord::Base
  attr_accessible :cinema_id, :show_date, :show_time, :show_type, :theater_id
has_many :bookings
belongs_to :movie
belongs_to :theater
belongs_to :cinema

#attr_reader :movie_title
#attr_accessible :movie_id
#attr_accessor :movie_id
attr_accessible :movie_id
attr_accessible :movie_title



def movie_title
  movie.try(:title)
end

def movie_title=(title)
  self.movie = Movie.find_by_title(title) if title.present?
end


end
