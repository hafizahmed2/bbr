class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :user_name, null: false
      t.string :user_email, null: false
      t.string :booking_for, null: false
      t.date :date, null: false
      t.time :time, null: false
      t.string :services, array: true, null: false
      t.string :budget, null: false

      t.timestamps
    end
  end
end
