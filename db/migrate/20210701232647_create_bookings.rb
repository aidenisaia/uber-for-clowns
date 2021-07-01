class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :price
      t.string :length
      t.integer :user_id
      t.integer :clown_id
      t.datetime :date

      t.timestamps
    end
  end
end
