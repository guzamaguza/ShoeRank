class CreateRegs < ActiveRecord::Migration[5.2]
  def change
    create_table :regs do |t|
      t.string :datetime_registered
      t.string :approved
      t.string :w_or_l

      t.belongs_to :user, foreign_key: true
      t.belongs_to :game, foreign_key: true
      t.timestamps
    end
  end
end
