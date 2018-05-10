class AddDateToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :date, :string
  end
end
