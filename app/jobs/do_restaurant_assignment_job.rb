class DoRestaurantAssignmentJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Afa.assign_restaurants
    [User.last].each do |user|
      UserMailer.lunch_email(user).deliver_now
    end
  end
end
