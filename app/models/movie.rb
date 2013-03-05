class Movie < ActiveRecord::Base
  attr_accessible :actors, :duration, :genre, :summary, :title
end
