class AddPhysicianIdToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :physician_id, :integer
    add_index :appointments, :physician_id
  end
end
