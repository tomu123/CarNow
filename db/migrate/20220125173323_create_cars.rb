class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.date :year
      t.string :number_plate
      t.string :color
      t.string :city
      t.float :price_per_day
      t.float :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
