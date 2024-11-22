class AddStatusDefaultValueToBookings < ActiveRecord::Migration[7.1]
  def change
    change_column :bookings, :status, :text, :default => "pending"
  end
end
