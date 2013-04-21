class Cinema < ActiveRecord::Base
  attr_accessible :location, :name
    validates :name, :location, :presence => true
    
has_many :shows, :dependent => :destroy
has_many :theaters, :dependent => :destroy
end

