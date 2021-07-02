class AddLocationToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :location, :string
  end
end
