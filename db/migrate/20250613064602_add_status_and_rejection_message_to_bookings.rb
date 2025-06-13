class AddStatusAndRejectionMessageToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :status, :string
    add_column :bookings, :rejection_message, :text
  end
end
