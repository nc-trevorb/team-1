class UserMailer < ApplicationMailer

  def morning_email(user)
    @user = user
    @url = 'url/morning/token'
    mail(to: @user.email, subject: 'Morning Email')
  end

  def team_email(user)
    @user = user
    @url = 'url/team/token'
    mail(to: @user.email, subject: 'Team Email')
  end

  def lunch_email(user, lunch)
    @user = user
    @lunch = lunch
    @teammates = lunch.users.select { |teammate|  teammate.name != user.name  }
    mail(to: @user.email, subject: 'Lunch Email')
  end

end
