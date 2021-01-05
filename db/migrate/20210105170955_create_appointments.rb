class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :dog_id
      t.integer :date
      t.integer :time

      t.timestamps
    end
  end
end
