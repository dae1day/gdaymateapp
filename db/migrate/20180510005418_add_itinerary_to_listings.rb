class AddItineraryToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :itinerary, :text
  end
end
