class AddLocationToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :location, :string, null: false, default: ''
  end
end
