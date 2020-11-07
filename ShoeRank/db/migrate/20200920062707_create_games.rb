class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :datetime_of_start
      t.string :datetime_of_end
      t.string :location
      t.string :timezone
      t.string :match_status

      t.timestamps
    end
  end
end
