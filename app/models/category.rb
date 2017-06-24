class Category < ApplicationRecord
  has_and_belongs_to_many :restaurants

  def self.[](category_name)
    find_by_name(category_name.downcase)
  end
end
