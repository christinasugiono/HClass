class PagesController < ApplicationController
  def home
    @categories = Item::CATEGORIES
  end

  def dashboard
    @bookings = Booking.where(user: current_user)
  end
end
