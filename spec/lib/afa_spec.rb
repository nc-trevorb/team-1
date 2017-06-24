require 'rails_helper'

describe Afa do
  describe '#assign_groups' do
    it 'assigns at least three users per group' do
      10.times { User.create }

      at_least_three = Afa.assign_groups.all? do |group|
        group.length >= 3
      end

      expect(at_least_three).to be(true)
    end
  end

  describe '#pick_restaurant' do
    it "picks the first user's last preference" do
      user1 = User.create!
      user2 = User.create!
      restaurant1 = Restaurant.create!
      restaurant2 = Restaurant.create!

      Preference.create!(user: user1, restaurant: restaurant1)
      Preference.create!(user: user2, restaurant: restaurant2)

      expect(Afa.pick_restaurant([user1, user2])).to eq(restaurant1)
    end

    it "prioritizes users who weren't satisfied yesterday" do
      user1 = User.create!(satisfied_yesterday: true)
      user2 = User.create!
      restaurant1 = Restaurant.create!
      restaurant2 = Restaurant.create!

      Preference.create!(user: user1, restaurant: restaurant1)
      Preference.create!(user: user2, restaurant: restaurant2)

      expect(Afa.pick_restaurant([user1, user2])).to eq(restaurant2)
    end

    it 'resets satisfied_yesterday values' do
      user = User.create!(satisfied_yesterday: true)
      Preference.create!(user: user, restaurant: Restaurant.create!)
      Afa.pick_restaurant([user])

      expect(user.reload.satisfied_yesterday).to eq(false)
    end
  end
end