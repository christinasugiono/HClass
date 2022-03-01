class PagesController < ApplicationController
  def home
    @categories = Item::CATEGORIES
  end

  def dashboard
  end
end
