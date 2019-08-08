class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :ladder_id
      t.integer :ladder_spot
      t.string :name
      t.string :match_record

      t.timestamps
    end
  end
end
