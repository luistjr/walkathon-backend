class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :comment
      t.string :img_url
      t.integer :user_id

      t.timestamps
    end
  end
end
