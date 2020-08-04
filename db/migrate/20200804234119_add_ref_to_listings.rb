class AddRefToListings < ActiveRecord::Migration[6.0]
  def change
    add_reference :listings, :brand, foreign_key: true
    add_reference :listings, :category, foreign_key: true
  end
end
