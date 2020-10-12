class CreateContests < ActiveRecord::Migration[5.2]
  def change
    create_table :contests do |t|
      t.string :stakes
      t.string :status

      t.timestamps
    end
  end
end
