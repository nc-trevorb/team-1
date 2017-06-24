class RestaurantController < ApplicationController
  skip_before_action :verify_authenticity_token

  def pick
    user
    restaurants

    if request.post? && params[:restaurant_id]
      user.pick_restaurant(params[:restaurant_id])
    end

    @preferred_restaurant = user.preferred_restaurant
  end

  def make_pick
    render json: user.pick_restaurant(params[:restaurant_id])
  end

  def rank
    user
    restaurants
  end
end
