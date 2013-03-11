class BookingsController < ApplicationController
  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookings }
    end
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
    @booking = Booking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @booking }
    end
  end

  # GET /bookings/new
  # GET /bookings/new.json
  def new
    @cinemas = Cinema.all
    @timings = []

    @booking = Booking.new
    @current_user = current_user
    #@movie = params[:mov_id]
    movie = 1
    @movie_details = Movie.find_by_id(1);
    @cinema = params[:cin_id]
    #@shows = Show.all(:order => 'updated_at DESC ', :conditions => ["movie_id = #{@cinema}"])
    @shows = Movie.find_by_id(1).shows.order("cinema_id DESC , show_date ASC, show_time ASC")
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @booking }
    end
  end

  def update_timings
    @cinemaid= params[:cinema_id]
    cinema = Cinema.find(params[:cinema_id])
	
    #@timings = Show.find_all_by_batch_id(batch.id,:conditions=>"is_deleted=false")
    @timings = Movie.find_by_id(@cinemaid).shows
    render :update do |page|
      page.replace_html 'timings', :partial => 'timings', :object => @timings
    end
  end

  def show_selected
  @booking = Booking.create(:show_id => params[:id])
  if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render json: @booking, status: :created, location: @booking }
      else
        format.html { render action: "new" }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
  end

 def getCinema
    # this contains what has been selected in the first select box
    @data_from_select1 = params[:cinema_id]

    # we get the data for selectbox 2
    @data_for_select2 = Movie.find_by_id(@data_from_select1).shows
    # render an array in JSON containing arrays like:
    # [[:id1, :name1], [:id2, :name2]]
    render :json => @data_for_select2.map{|c| [c.id, c.name]}
  end

  # GET /bookings/1/edit
  def edit
    @booking = Booking.find(params[:id])
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(params[:booking])

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render json: @booking, status: :created, location: @booking }
      else
        format.html { render action: "new" }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookings/1
  # PUT /bookings/1.json
  def update
    @booking = Booking.find(params[:id])

    respond_to do |format|
      if @booking.update_attributes(params[:booking])
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to bookings_url }
      format.json { head :no_content }
    end
  end
end
