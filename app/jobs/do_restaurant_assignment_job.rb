class DoRestaurantAssignmentJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Afa.assign_restaurants
    UserMailer.lunch_email(user).deliver_now
  end
end
