class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def user
    raise "token must be provided" unless params[:token]

    @user ||= User.find_by_token(params[:token])
  end

  def restaurants
    @restaurants ||= Restaurant.all
  end
end
