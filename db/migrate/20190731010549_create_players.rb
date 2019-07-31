class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :ladder_id
      t.integer :ladder_spot
      t.string :first_name
      t.string :last_name
      t.string :record

      t.timestamps
    end
  end
end