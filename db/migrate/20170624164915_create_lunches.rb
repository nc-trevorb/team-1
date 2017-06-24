class CreateLunches < ActiveRecord::Migration[5.0]
  def change
    create_table :lunches do |t|
      t.references :restaurant
      t.datetime :date

      t.timestamps
    end
  end
end
