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
end