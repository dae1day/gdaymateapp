class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.decimal :cost
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
