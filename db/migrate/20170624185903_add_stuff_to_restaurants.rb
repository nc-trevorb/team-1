class AddStuffToRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    create_table :categories_restaurants do |t|
      t.belongs_to :restaurant
      t.belongs_to :category
    end

    add_column :restaurants, :image_url, :string
    add_column :restaurants, :address, :string
  end
end
