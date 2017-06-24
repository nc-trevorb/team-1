require 'rails_helper'

describe User do
  describe '#count_lunches_with_user' do
    let(:user1) { User.create }
    let(:user2) { User.create }

    it 'should return 0 when the user has never had lunch with a person' do
      expect(user1.count_lunches_with_user(user2)).to eq(0)
    end

    it 'should return the number of lunches with both users' do
      3.times { Lunch.create(users: [user1, user2]) }
      expect(user1.count_lunches_with_user(user2)).to eq(3)
    end
  end
end