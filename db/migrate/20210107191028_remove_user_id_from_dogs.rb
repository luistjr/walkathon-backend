class RemoveUserIdFromDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :user_id, :integer
  end
end
