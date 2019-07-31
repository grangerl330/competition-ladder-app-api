class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :player_id
      t.string :score
      t.string :result
      t.date :date

      t.timestamps
    end
  end
end
