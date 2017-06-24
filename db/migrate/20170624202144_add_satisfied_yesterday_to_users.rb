class AddSatisfiedYesterdayToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :satisfied_yesterday, :boolean, default: false
  end
end
