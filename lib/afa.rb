class Afa
  class << self
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
      users.first.preferences.last.restaurant
    end
  end
end
