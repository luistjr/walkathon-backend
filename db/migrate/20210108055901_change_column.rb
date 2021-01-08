class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :time, :string
  end
end
