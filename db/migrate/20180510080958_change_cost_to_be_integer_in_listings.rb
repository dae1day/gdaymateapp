class ChangeCostToBeIntegerInListings < ActiveRecord::Migration[5.1]
  def change
    change_column :listings, :cost, :integer
  end
end
