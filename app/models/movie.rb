class Movie < ActiveRecord::Base
  attr_accessible :actors, :duration, :genre, :summary, :title
  has_many :shows
  
  validates :duration, :numericality => {:greater_than => 0, :only_integer => true, :allow_blank => true, :allow_nil => true}
end
