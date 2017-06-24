class AddRestaurantToLunch < ActiveRecord::Migration[5.0]
  def change
    add_reference :lunches, :restaurant
  end
end
