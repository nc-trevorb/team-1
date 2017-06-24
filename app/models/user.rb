class User < ApplicationRecord
  has_and_belongs_to_many :lunches

  def count_lunches_with_user(other_user)
    self.lunches.select do |lunch|
      lunch.users.include?(other_user)
    end.count
  end
end
