class Movie < ActiveRecord::Base
  attr_accessible :actors, :duration, :genre, :summary, :title
  has_many :shows
  attr_accessible :movie_image
  has_attached_file :movie_image , :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates :duration, :numericality => {:greater_than => 0, :only_integer => true, :allow_blank => true, :allow_nil => true}
accepts_nested_attributes_for :shows

  def funky_method
    "#{self.title}"
  end

end
