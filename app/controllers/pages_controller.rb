class PagesController < ApplicationController
  def home
    @categories = Item::CATEGORIES
  end

  def dashboard
    @bookings_of_user = Booking.where(user: current_user)
    @bookings_from_user = Booking.joins(:item).where(item: {user: current_user})
    if Item.where(user: current_user).empty?
      @owner_status = false
    else
      @owner_status = true
    end
  end
end
