class User < ApplicationRecord
  has_and_belongs_to_many :lunches
  has_many :preferences

  def pick_restaurant(restaurant_id)
    preferences.create!(restaurant_id: Restaurant.find(restaurant_id).id)
  end

  def preferred_restaurant
    preferences.last.try(:restaurant)
  end

  def count_lunches_with_user(other_user)
    self.lunches.select do |lunch|
      lunch.users.include?(other_user)
    end.count
  end
end
