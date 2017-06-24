class AddMissingJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :lunches_users, id: false do |t|
      t.belongs_to :lunch, index: true
      t.belongs_to :user, index: true
    end
  end
end
