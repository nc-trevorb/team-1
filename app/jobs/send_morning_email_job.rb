class SendMorningEmailJob < ApplicationJob
  queue_as :default
  #SendMorningEmailJob.set(wait: 2.second).perform_later()
  def perform(*args)
    Afa.generate_daily_token
    User.all.each do |user|
      UserMailer.morning_email(user).deliver_now
    end
    DoGroupAssignmentJob.set(wait: 10.second).perform_later()
  end
end
