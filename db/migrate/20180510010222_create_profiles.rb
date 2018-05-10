class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :image
      t.string :language
      t.string :interest
      t.string :gender
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
