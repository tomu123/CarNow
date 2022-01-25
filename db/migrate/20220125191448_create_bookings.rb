class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.boolean :is_accepted
      t.date :check_in
      t.date :check_out
      t.decimal :price_per_day
      t.decimal :amount
      t.integer :days
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
