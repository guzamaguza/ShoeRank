class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.string :model
      t.string :type
      t.string :description
      t.belongs_to :brand, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
