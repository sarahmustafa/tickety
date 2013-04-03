class Show < ActiveRecord::Base
  attr_accessible :cinema_id, :show_date, :show_time, :show_type, :theater_id
has_many :bookings
has_many :seats, :dependent => :destroy
belongs_to :movie
belongs_to :theater
belongs_to :cinema


attr_reader :movie_title
#attr_accessor :movie_title
validates :show_date, :show_time, :theater_id, :movie_title, :presence => true

#attr_reader :movie_title
#attr_accessor :movie_id
attr_accessible :movie_id
attr_accessible :movie_title



def movie_title
  movie.try(:title)
end

def movie_title=(title)
  self.movie = Movie.find_by_title(title) if title.present?
end

def self.clear_show
  ActiveRecord::Base.logger.debug "test"
  
  t = Time.now
  t2 = t + 15*60
  if t2 > self.show_time
    self.destroy
  end
end

end
