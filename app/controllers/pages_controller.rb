class PagesController < ApplicationController
  
  def creators
  end

  def customer_reward
   @user= current_user
   @rewards= Reward.find(:all, :conditions => ["reward_points <= ?", @user.reward_points])
  end

  def currentlyshowing
    @allmovies = Movie.order("created_at desc")
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
