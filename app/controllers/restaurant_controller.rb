class RestaurantController < ApplicationController
  def pick
    user
    restaurants

    respond_to do |format|
      format.html {}
      format.js   {}
      format.json {}
    end
  end

  def rank
    user
    restaurants
  end
end
