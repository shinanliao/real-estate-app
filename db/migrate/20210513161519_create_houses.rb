class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.text :description
      t.integer :year_built
      t.string :square_feet
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :availability
      t.string :address
      t.string :price

      t.timestamps
    end
  end
end
