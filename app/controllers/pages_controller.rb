class PagesController < ApplicationController
  
  def creators
  end

  def CRS
  end

  def currentlyshowing
  end

  def index
  end

  def newreleases
    @newrelease = Movie.order("created_at desc").limit(8).where("created_at < ?", 1.days.ago)
  end

  def policies
  end

  def webinfo
  end
end
