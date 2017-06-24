class Afa
  class << self
    def generate_daily_token
      User.all.each do |user|
        user.token = SecureRandom.base64(15).tr('+/=', '0aZ').strip.delete("\n")
        user.save
      end

    end

    def assign_groups
      groups = User.all.shuffle.in_groups_of(3)

      if groups.any? { |g| g.include?(nil) }
        extra_users = groups.last.compact
        groups_of_three = groups[1..(groups.length - 2)]
        groups_of_three + [(groups.first + extra_users)]
      else
        groups
      end
    end

    def assign_restaurants
    end

    def pick_restaurant(users)
      satisfied, unsatisfied = users.partition(&:satisfied_yesterday)
      users.each { |u| u.update_attributes!(satisfied_yesterday: false) }

      (unsatisfied.shuffle + satisfied).first.preferences.last.restaurant
    end
  end
end
