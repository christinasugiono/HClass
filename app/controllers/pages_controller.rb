class PagesController < ApplicationController
  def home
    @categories = Item::CATEGORIES
  end
end
