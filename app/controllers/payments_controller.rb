class PaymentsController < ApplicationController
  load_and_authorize_resource :booking
  require 'rqrcode'
  

  
  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @payments }
    end
  end
  # shamma is the queen
  # GET /payments/1
  # GET /payments/1.json
  def show
    @payment = Payment.find(params[:id])

    @show = @payment.bookings.last.show
    @tickets = @payment.bookings.last.seats.count
    
    @thebooking = @payment.bookings.last
    respond_to do |format|
        
      #show.html.erb
      format.html
      
      format.pdf do
      render :pdf => "ticket",
      :template => 'payments/show.html.erb',
      :show_as_html => params[:debug].present?
    end

    #format.svg  { render :qrcode => request.url, :level => :l, :unit => 10 }    
       format.json { render json: @payment }
    end
  end

  # GET /payments/new
  # GET /payments/new.json
  def new
@user = User.find(current_user)
    @booking = Booking.find(params[:booking_id])
    @numtickets = @user.bookings.last.seats.count
    @payment = Payment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @payment }
    end
  end

  # GET /payments/1/edit
  def edit
    @payment = Payment.find(params[:id])
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(params[:payment])
    @user = User.find(current_user)
    @numtickets = @user.bookings.last.seats.count
    @user.reward_points = @user.reward_points + 5 * @numtickets
    @updatebooking = @user.bookings.last
    @newprice = @user.bookings.last.price * @numtickets
     
    respond_to do |format|
      if @payment.save
        @updatebooking.payment_id = @payment.id
        @updatebooking.save
        @user.save
        UserMailer.ticket_confirmation(@user).deliver
        format.html { redirect_to @payment}
        format.json { render json: @payment, status: :created, location: @payment }
      else
        format.html { render action: "new" }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /payments/1
  # PUT /payments/1.json
  def update
    @payment = Payment.find(params[:id])

    respond_to do |format|
      if @payment.update_attributes(params[:payment])
        format.html { redirect_to @payment}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy

    respond_to do |format|
      format.html { redirect_to payments_url }
      format.json { head :no_content }
    end
  end
end
