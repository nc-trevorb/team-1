class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
