class DoGroupAssignmentJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Afa.assign_groups
    # UserMailer.team_email(user).deliver_now
    DoRestaurantAssignmentJob.set(wait: 10.second).perform_later()
  end
end
