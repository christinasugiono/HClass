class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @item = Item.find(params[:item_id])
    @booking.user = current_user
    @booking.total_price = @item.price * (@booking.end_date - @booking.start_date).to_i
    @booking.status = "Pending"
    @booking.item = @item
    if @booking.save
      redirect_to dashboard_path
    else
      render "items/show"
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:booking][:status]
    if @booking.save
      redirect_to dashboard_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
