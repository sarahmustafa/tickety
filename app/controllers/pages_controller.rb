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

    @newrelease = Movie.order("created_at desc").limit(8).where("created_at < ?", 1.second.ago)
  end

def create
@movies = Search.new(params[:search])
respond_to do |format|
   if @movies.save
format.html { redirect_to :controller => "bookings", :action => "prebooking", :mov__id => @movies.movie_title}
     end
end
end

  def newreleases
    @newrelease = Movie.order("created_at desc").limit(8).where("created_at < ?", 1.second.ago)
  end

  def policies
  end

  def webinfo
  end
  
  def admindashboard
  end
end
