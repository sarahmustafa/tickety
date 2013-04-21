class Cinema < ActiveRecord::Base
  attr_accessible :location, :name
    validates :name, :location, :presence => true
    
has_many :shows
has_many :theaters
end

