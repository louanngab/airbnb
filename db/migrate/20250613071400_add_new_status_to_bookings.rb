class AddNewStatusToBookings < ActiveRecord::Migration[8.0]
  def change
    remove_column :bookings, :status
    add_column :bookings, :status, :integer, default: 0
  end
end
