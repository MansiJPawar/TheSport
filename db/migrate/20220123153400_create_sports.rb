class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.string :sport_name
      t.string :sport_equipement
      t.integer :player_count

      t.timestamps
    end
  end
end
