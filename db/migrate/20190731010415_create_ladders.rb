class CreateLadders < ActiveRecord::Migration[5.2]
  def change
    create_table :ladders do |t|
      t.string :title
      t.string :size
      t.integer :user_id

      t.timestamps
    end
  end
end
