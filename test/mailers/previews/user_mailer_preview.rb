class UserMailerPreview < ActionMailer::Preview
  def morning_email
    UserMailer.morning_email(User.first)
  end
  def team_email
    UserMailer.team_email(User.first)
  end
end
