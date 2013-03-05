class Cinema < ActiveRecord::Base
  attr_accessible :location, :name
has_many :shows
has_many :theaters
end

