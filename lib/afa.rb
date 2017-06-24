class Afa
  class << self
    def generate_daily_token
      User.all.each do |user|
        user.token = SecureRandom.base64(15).tr('+/=', '0aZ').strip.delete("\n")
        user.save
      end

    end

    # def create_adjacency_matrix
    #   all_users = User.all
    #   adjacency_matrix = Hash.new
    #   all_users.each do |user|
    #     adjacency_matrix[user.id] = Hash.new
    #   end
    #   all_users.each do |user|
    #     all_users.each do |other_user|
    #       if adjacency_matrix[user.id].key?(other_user.id)
    #         count = user.count_lunches_with_user(other_user)
    #         adjacency_matrix[user.id][other_user.id] = count
    #         adjacency_matrix[other_user.id][user.id]
    #       end
    #     end
    #   end
    # end
    #
    # def get_group_score(group, adjacency_matrix)
    #   score = 0
    #   (0..group.length).each do |i|
    #     ((i + 1)..group.length).each do |j|
    #       score += adjacency_matrix[i][j]
    #     end
    #   end
    # end
    #
    # def first_fit(all_users)
    #   adjacency_matrix = create_adjacency_matrix
    #   groups = Array.new
    #   (0..(all_users.length / 3)).each do |group|
    #     group= Array.new
    #     groups.push(group)
    #   end
    #   all_users.each do |user|
    #     group_idx = 0
    #     best_score = get_group_score(groups[0], adjacency_matrix)
    #     groups.each_with_index do |group, idx|
    #       scoure = get_group_score(group, adjacency_matrix)
    #       if scoure < best_score
    #         best_score = scoure
    #         group_idx = idx
    #       end
    #       group << user.id
    #     end
    #   end
    #

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
