class AddPaidToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :paid, :boolean
  end
end
